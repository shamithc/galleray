class CreateDataEntryImages < ActiveRecord::Migration
  def self.up
    create_table :data_entry_images do |t|
       t.integer  :data_entry_id
       t.integer  :parent_id
       t.string   :photo_file_name
       t.string   :photo_content_type
       t.integer  :photo_file_size, :default => 14000
       t.string   :thumbnail
       t.string   :status
       t.integer  :width
       t.integer  :height
      t.timestamps
    end
  end

  def self.down
    drop_table :data_entry_images
  end
end
