class Upload < ActiveRecord::Base
  
  has_attached_file :upload,
    :storage => :s3,
    :bucket => 'uploads.spiralax.com',
    :s3_credentials => {
      :access_key_id => ENV['AKIAISDLMBU4BI4CEINA'],
      :secret_access_key => ENV['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']
    }
end
