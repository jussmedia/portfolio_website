class Blog::Comment < ActiveRecord::Base
  belongs_to :post
  has_ancestry
end

# == Schema Information
#
# Table name: blog_comments
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  author     :string(255)      not null
#  approved   :boolean          default(FALSE), not null
#  ancestry   :string(255)
#  post_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_blog_comments_on_ancestry  (ancestry)
#  index_blog_comments_on_author    (author)
#  index_blog_comments_on_post_id   (post_id)
#
