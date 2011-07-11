class Project < ActiveRecord::Base
  has_many :discussions
  has_many :to_dos
  has_many :milestones
  has_many :uploads
  has_many :milestones
<<<<<<< HEAD
  
  has_and_belongs_to_many :users
=======
  has_many :ownerships
  has_many :users, :through => :ownerships
>>>>>>> 36c589f279a64dd219d2f21c66c7dc3220b3a82a
  
  accepts_nested_attributes_for :discussions

end
