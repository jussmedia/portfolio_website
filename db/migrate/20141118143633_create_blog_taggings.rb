class CreateBlogTaggings < ActiveRecord::Migration
  def change
    create_table :blog_taggings do |t|
      t.references :post, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
