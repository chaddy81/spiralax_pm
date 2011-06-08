class Project < ActiveRecord::Base
  has_many :discussions
  has_many :to_dos
  has_many :milestones
  has_many :uploads
end
