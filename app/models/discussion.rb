class Discussion < ActiveRecord::Base
  belongs_to :project

	has_many :comments
	has_attached_file :photo,
    :styles => { :thumb => '100x100>', :medium => '300x300>'},
    :storage => :s3,
    :bucket => 'uploads.spiralax.com',
    :s3_credentials => {
      :access_key_id => 'AKIAISDLMBU4BI4CEINA',
      :secret_access_key => '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'
    },
    :path => ":attachment/:id"
end
