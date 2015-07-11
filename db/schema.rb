# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141203164328) do

  create_table "blog_attachments", force: true do |t|
    t.string   "file"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blog_attachments", ["post_id"], name: "index_blog_attachments_on_post_id", using: :btree

  create_table "blog_comments", force: true do |t|
    t.text     "body",                       null: false
    t.string   "author",                     null: false
    t.boolean  "approved",   default: false, null: false
    t.string   "ancestry"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blog_comments", ["ancestry"], name: "index_blog_comments_on_ancestry", using: :btree
  add_index "blog_comments", ["author"], name: "index_blog_comments_on_author", using: :btree
  add_index "blog_comments", ["post_id"], name: "index_blog_comments_on_post_id", using: :btree

  create_table "blog_posts", force: true do |t|
    t.string   "title",                      null: false
    t.text     "body",                       null: false
    t.boolean  "published",  default: false, null: false
    t.string   "author",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",                       null: false
  end

  create_table "blog_taggings", force: true do |t|
    t.integer  "post_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blog_taggings", ["post_id"], name: "index_blog_taggings_on_post_id", using: :btree
  add_index "blog_taggings", ["tag_id"], name: "index_blog_taggings_on_tag_id", using: :btree

  create_table "blog_tags", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",       null: false
  end

end
