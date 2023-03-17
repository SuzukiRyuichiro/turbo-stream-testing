Comment.destroy_all
Blog.destroy_all

5.times do
  blog = Blog.create(title: Faker::Book.title, content: Faker::Quote.matz)
  3.times do
    Comment.create(content: Faker::Quote.matz, blog:)
  end
end
