class FakeJob < ApplicationJob
  queue_as :default

  after_perform do |job|
    job.arguments.first.broadcast_update
  end

  def perform(blog)
    sleep 3
    3.times do
      Comment.create(content: Faker::Movies::StarWars.quote, blog:)
    end
  end
end
