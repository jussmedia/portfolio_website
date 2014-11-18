class Blog::Post < ActiveRecord::Base
  default_scope { order(created_at: :desc) }

  has_many :tags, through: :taggings
  has_many :taggings

  validates :title, :body, :author, presence: true
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
#
