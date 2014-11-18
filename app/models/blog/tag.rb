class Blog::Tag < ActiveRecord::Base
  has_many :taggings
  has_many :posts, through: :taggings

  validates :name, presence: true
  
  def to_s
    name
  end
end

# == Schema Information
#
# Table name: blog_tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
