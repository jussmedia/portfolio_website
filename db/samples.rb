#### Creating sample Blog::Post.

#******************
#
# Lets create some sample blog posts
#
#******************
puts "Creating sample blog posts..."
post_count = 10
p = ProgressBar.create(title: "Sample Posts", total: post_count)
post_count.times do
  post = Blog::Post.new(title: Faker::Lorem.sentence,
                 body: Faker::Lorem.paragraph,
                 author: Faker::Name.name,
                 published: [true, false].sample)

  post.save
  p.increment
end
