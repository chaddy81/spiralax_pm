class Upload < ActiveRecord::Base
  
  has_attached_file :upload,
    :storage => :s3,
    :bucket => 'uploads.spiralax.com',
    :s3_credentials => {
      :access_key_id => ENV['AKIAIRG5XEIHBB42GFBQ'],
      :secret_access_key => ENV['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']
    }
end
