class FakeJob < ApplicationJob
  queue_as :default

  def perform(blog)
    sleep 3
    3.times do
      Comment.create(content: Faker::Movies::StarWars.quote, blog:)
    end
    Turbo::StreamsChannel.broadcast_append_to "comments-for-blog-#{blog.id}",
                                              target: "comments-for-blog-#{blog.id}",
                                              partial: "blogs/comments",
                                              locals: { blog: }
  end
end
