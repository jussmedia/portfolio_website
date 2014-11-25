class CreateBlogComments < ActiveRecord::Migration
  def up
    create_table :blog_comments do |t|
      t.text :body, null:false
      t.string :author, null: false
      t.boolean :approved, null: false, default: false
      t.string :ancestry
      t.references :post, index: true

      t.timestamps
    end
    add_index :blog_comments, :author
    add_index :blog_comments, :ancestry
  end

  def down
    remove_index :blog_comments, :ancestry
  end
end
