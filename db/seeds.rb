Comment.destroy_all
Blog.destroy_all

3.times do
  blog = Blog.create(title: Faker::Book.title, content: Faker::Quote.matz)
end
