class Blog::Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :date_and_title, use: [:slugged, :finders]

  default_scope { order(created_at: :desc) }
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :comments
  has_many :attachments, dependent: :destroy

  accepts_nested_attributes_for :attachments, allow_destroy: true
  validates :title, :body, :author, :slug, presence: true

  def date_and_title
    date = created_at || Time.now
    "#{date.strftime('%Y %m %d')} #{title}"
  end

  def should_generate_new_friendly_id?
    title_changed?
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
