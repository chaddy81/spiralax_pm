class Project < ActiveRecord::Base
  has_many :discussions
  has_many :to_dos
  has_many :milestones
  has_many :uploads
  has_many :milestones
  
  has_and_belongs_to_many :users
  
  accepts_nested_attributes_for :discussions

end
