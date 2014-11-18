require "test_helper"

describe Blog::Tag do
  let(:tags) { blog_tags :one }

  it "must require a name" do
    t = Blog::Tag.new
    t.wont_be :valid?

    t.errors.messages[:name].must_be :present?
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
#
