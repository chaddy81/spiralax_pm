class Upload < ActiveRecord::Base
  belongs_to :project

  has_attached_file :upload,
    :styles => { :thumb => '100x100>', :medium => '300x300>'},
    :storage => :s3,
    :bucket => 'uploads.spiralax.com',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    },
    :path => ":attachment/:id"
end
