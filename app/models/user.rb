class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :invitable, :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,
    :token_authenticatable, :confirmable, :lockable, :timeoutable and :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :roles, :name, :invited_project, :role
  
  has_many :projects, :through => :ownerships
  has_many :roles, :through => :ownerships
  
  has_many :ownerships
  
  def role?(role)
    return !!self.roles.find_by_name(role.to_s)
 
end
