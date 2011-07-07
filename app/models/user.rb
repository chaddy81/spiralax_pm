class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,
    :token_authenticatable, :confirmable, :lockable, :timeoutable and :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :roles
  
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :roles
  
  def role?(role)
    return self.roles.find_by_name(role.to_s)
  end
end
