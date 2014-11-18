class Blog::Tagging < ActiveRecord::Base
  belongs_to :post
  belongs_to :tags
end

# == Schema Information
#
# Table name: blog_taggings
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  tags_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_blog_taggings_on_post_id  (post_id)
#  index_blog_taggings_on_tags_id  (tags_id)
#
