class Discussion < ActiveRecord::Base
  belongs_to :project
<<<<<<< HEAD
=======
  has_one :project
>>>>>>> 3161727fba2dd844895870aa4250bb0b6b6bccbf
	has_many :comments
	has_attached_file :photo,
	:styles => {
      :thumb => "100x100",
      :small => "150x150" }
end
