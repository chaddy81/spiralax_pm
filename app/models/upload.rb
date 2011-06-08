class Upload < ActiveRecord::Base
  belongs_to :project
<<<<<<< HEAD
  
=======
  has_one :project
>>>>>>> 3161727fba2dd844895870aa4250bb0b6b6bccbf
  has_attached_file :upload,
    :styles => { :thumb => '100x100>', :medium => '300x300>'},
    :storage => :s3,
    :bucket => ENV['S3_BUCKET'],
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    },
    :path => ":attachment/:id"
end
