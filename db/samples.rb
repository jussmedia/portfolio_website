#### Creating sample Blog::Post.


#******************
#
# Lets create some sample tags
#
#******************

puts 'Creating sample tags'
tag_count = 10
p = ProgressBar.create(title: 'Sample Tags', total: tag_count)
tag_count.times  do
  tag = Blog::Tag.new(name: Faker::Lorem.word)
  tag.save
  p.increment
end

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
  tags = Blog::Tag.find((1...10).to_a.sample((1...5).to_a.sample))
  post.tags << tags
  post.save
  p.increment
end
