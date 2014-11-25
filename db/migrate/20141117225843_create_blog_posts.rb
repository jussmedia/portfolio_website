class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.boolean :published, null: false, default: false
      t.string :author, null: false

      t.timestamps
    end
  end
end
