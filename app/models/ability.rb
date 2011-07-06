class Ability
  include CanCan::Ability
  
  def initialize(user)
      
    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
      cannot :read, User
      cannot :read, Project, :action => 'manage'
    end
  end
  
end
