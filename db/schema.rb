# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110419115811) do

  create_table "data_entries", :force => true do |t|
    t.integer  "data_entry_category_id"
    t.string   "location"
    t.string   "property_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_entry_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_entry_images", :force => true do |t|
    t.integer  "data_entry_id"
    t.integer  "parent_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size",    :default => 14000
    t.string   "thumbnail"
    t.string   "status"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
