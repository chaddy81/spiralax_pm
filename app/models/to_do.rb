class ToDo < ActiveRecord::Base
  belongs_to :project
<<<<<<< HEAD
=======
  has_one :project
>>>>>>> 3161727fba2dd844895870aa4250bb0b6b6bccbf
	has_many :to_dos
	validates :title, :presence => true
	validates :body, :presence => true
end
