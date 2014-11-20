class Blog::Tag < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  has_many :taggings
  has_many :posts, through: :taggings

  validates :name, :slug, presence: true, uniqueness: true

  def to_s
    name
  end

  def should_generate_new_friendly_id?
    name_changed?
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
