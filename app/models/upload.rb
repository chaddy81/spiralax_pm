class Upload < ActiveRecord::Base
  has_attached_file :upload,
      :styles => { :medium => "300x300>", :thumb  => "100x100>" },
      :path => "spiralax/rails/images/:attachment/:id/:style/:filename",
      :url => "http://spiralax.com/rails/images/:attachment/:id/:style/:filename",
      :storage => :ftp,
      :ftp_credentials => Rails.root.join('config', 'paperclipftp.yml')
end
