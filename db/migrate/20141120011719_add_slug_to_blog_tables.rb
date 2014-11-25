class AddSlugToBlogTables < ActiveRecord::Migration
  def change
    add_column :blog_posts, :slug, :string, index: true, unique: true, null: false
    add_column :blog_tags, :slug, :string, index: true, unique: true, null: false
  end
end
