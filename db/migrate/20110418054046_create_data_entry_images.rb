class CreateDataEntryImages < ActiveRecord::Migration
  def self.up
    create_table :data_entry_images do |t|
      t.integer :data_entry_id
      t.string  :filename
      t.string  :content_type
      t.integer :size, :default => 14000
      t.string  :status
      t.integer :width
      t.integer :height
      t.timestamps
      t.timestamps
    end
  end

  def self.down
    drop_table :data_entry_images
  end
end
