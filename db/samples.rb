#### Creating sample Blog::Post.

#******************
#
# Lets create some sample blog posts
#
#******************
puts "Creating sample blog posts..."
post_count = 33
p = ProgressBar.create(title: "Sample Posts", total: post_count)
post_count.times do
  post = Blog::Post.new(title: Faker::Lorem.sentence,
                 body: Faker::Lorem.paragraph([2...8].sample),
                 author: Faker::Name.name,
                 published: [true, false].sample,
                 created_at: Faker::Time.between(5.months.ago, Time.now))

  post.save
  p.increment
end
