class CreateDataEntries < ActiveRecord::Migration
  def self.up
    create_table :data_entries do |t|
      t.integer  :data_entry_category_id
      t.string   :location
      t.string   :property_name
      t.timestamps
    end
  end

  def self.down
    drop_table :data_entries
  end
end
