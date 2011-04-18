class DataEntryImage < ActiveRecord::Base
  has_attachment :content_type => :image,
                 :storage => :file_system,
                 :max_size => 500.kilobytes,
                 :path_prefix => "public/image"
                 #:resize_to => '320x200>',
                 #:thumbnails => { :thumb => '100x100>' }

  validates_as_attachment

end
