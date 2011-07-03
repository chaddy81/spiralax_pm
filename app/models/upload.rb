class Upload < ActiveRecord::Base
  belongs_to :project

  has_attached_file :upload,
    :styles => { :thumb => '100x100>', :medium => '300x300>'},
    :storage => :s3,
    :bucket => 'uploads.spiralax.com',
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => ":attachment/:id"
end
