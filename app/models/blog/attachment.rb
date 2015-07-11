class Blog::Attachment < ActiveRecord::Base
  belongs_to :post
  mount_uploader :image, ImageUploader
end

# == Schema Information
#
# Table name: blog_attachments
#
#  id         :integer          not null, primary key
#  file       :string(255)
#  post_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_blog_attachments_on_post_id  (post_id)
#
