require "test_helper"

describe Blog::Tagging do
  let(:tagging) { Blog::Tagging.new }

  it "must be valid" do
    tagging.must_be :valid?
  end
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
