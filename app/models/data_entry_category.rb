class DataEntryCategory < ActiveRecord::Base
   belongs_to :data_entry
   #has_many :data_entries
end
