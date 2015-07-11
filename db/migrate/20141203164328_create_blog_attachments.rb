class CreateBlogAttachments < ActiveRecord::Migration
  def change
    create_table :blog_attachments do |t|
      t.string :file
      t.references :post, index: true

      t.timestamps
    end
  end
end
