class Project < ActiveRecord::Base
  has_many :discussions
  has_many :to_dos
<<<<<<< HEAD
  has_many :milestones
  has_many :uploads
=======
  has_many :uploads
  has_many :milestones
>>>>>>> 3161727fba2dd844895870aa4250bb0b6b6bccbf
end
