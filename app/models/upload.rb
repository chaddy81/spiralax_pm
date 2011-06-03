class Upload < ActiveRecord::Base
  
  has_attached_file :upload,
      :styles => { :medium => "300x300>", :thumb  => "100x100>" },
      :path => "spiralax/rails/images/:attachment/:id/:style/:filename",
                      :url => "http://spiralax.com/images/:attachment/:id/:style/:filename",
                      :storage => :ftp,
                      :ftp_credentials => { :host => 'ftp.spiralax.com', :username => 'revelry2009', :password => 'Keegan0610' },
                      :ftp_passive_mode => false,
                      :ftp_timeout => 120,
                      :ftp_verify_size_on_upload => false,
                      :ftp_debug_mode => false
end
