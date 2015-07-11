require "test_helper"

describe Blog::Attachment do
  let(:attachment) { Blog::Attachment.new }

  it "must be valid" do
    attachment.must_be :valid?
  end
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
