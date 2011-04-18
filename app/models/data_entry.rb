class DataEntry < ActiveRecord::Base
  has_many :data_entry_categories
  #belongs_to :data_entry_category
  validates_presence_of :location
  validates_presence_of :data_entry_category_id,:property_name

  validates_format_of :location, :with =>%r{^(?:[_a-z0-9-]+)(\.[_a-z0-9-]+)*,([_a-z0-9]+)([a-z0-9-]+)}i


  
end
