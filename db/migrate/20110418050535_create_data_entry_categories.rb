class CreateDataEntryCategories < ActiveRecord::Migration
  def self.up
    create_table :data_entry_categories do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :data_entry_categories
  end
end
