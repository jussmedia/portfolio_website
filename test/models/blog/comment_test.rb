require "test_helper"

describe Blog::Comment do
  let(:invalid_comment) { Blog::Comment.new }
  let(:comment) { blog_comments(:one) }

  it "must be valid" do
    comment.must_be :valid?
  end

  describe 'validates presence' do
    [:body, :author].each do |field|
      it "must contain #{field}" do
        invalid_comment.valid?
        invalid_comment.errors.messages[field].must_be :present?

        invalid_comment.public_send("#{field}=", 'This is some value')
        invalid_comment.valid?
        invalid_comment.errors.messages[field].wont_be :present?
      end
    end
  end
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
