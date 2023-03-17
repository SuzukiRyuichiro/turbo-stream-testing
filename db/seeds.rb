5.times do
  Blog.create(title: Faker::Book.title, content: Faker::Quote.matz)
end
