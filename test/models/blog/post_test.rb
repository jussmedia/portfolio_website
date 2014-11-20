require "test_helper"

describe Blog::Post do

  let(:post) { blog_posts :unpublished }
  let(:published) { blog_posts :published }
  let(:invalid_post) { Blog::Post.new }

  it "must be valid" do
    post.must_be :valid?
  end

  it 'must have default for published' do
    invalid_post.published.must_equal false
  end

  describe 'default scope' do
    
    it 'must order descending' do
      Blog::Post.all.must_equal [published, post]
    end
  end

  describe 'validates presence' do
    [:title, :body, :author].each do |field|

      it "must contain #{field}" do
        invalid_post.valid?
        invalid_post.errors.messages[field].must_be :present?

        invalid_post.public_send("#{field}=", 'This is some value')
        invalid_post.valid?
        invalid_post.errors.messages[field].wont_be :present?
      end
    end
  end


end

# == Schema Information
#
# Table name: blog_posts
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  body       :text             not null
#  published  :boolean          default(FALSE), not null
#  author     :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  slug       :string(255)      not null
#
