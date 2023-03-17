class FakeJob < ApplicationJob
  queue_as :default

  def perform(blog)
    3.times do
      sleep 1
      Comment.create(content: Faker::Movies::StarWars.quote, blog:)
    end
  end
end
