class DataEntryImage < ActiveRecord::Base
has_attached_file :photo,
      :styles => {
                :thumb=> "197x165#",
                :small  => "150x150>",
                :medium => "300x300>",
                :large =>   "400x400>" }


validates_attachment_presence :photo
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end
