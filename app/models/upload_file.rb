class UploadFile < ActiveRecord::Base
  has_attached_file :file_upload,
  :styles => {
      :thumb => "100x100",
      :small => "150x150" }
  attr_accessor :file_upload_file_name
end
