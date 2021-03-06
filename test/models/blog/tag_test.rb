require "test_helper"

describe Blog::Tag do
  let(:tags) { blog_tags :one }

  describe 'validates presence' do
    [:name, :slug].each do |field|

      it "must require a #{field}" do
        t = Blog::Tag.new
        t.wont_be :valid?

        t.errors.messages[field].must_be :present?
      end
    end
  end

  it 'must be unique' do
    t = Blog::Tag.create(name: 'technology')
    t.valid?

    t.errors.messages[:name].must_be :present?
    t.errors.messages[:name].first.must_equal 'has already been taken'
  end

  it "must be valid" do
    tags.must_be :valid?
  end
end

# == Schema Information
#
# Table name: blog_tags
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  slug       :string(255)      not null
#
