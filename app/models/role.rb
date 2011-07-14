class Role < ActiveRecord::Base
  has_many :ownerships
  
  has_many :projects, :through => :ownerships
  has_many :users, :through => :ownerships
  
  attr_accessible :role, :roles
end