class Ability
  include CanCan::Ability
  
  def initialize(user)

    user ||= User.new #guest account

    if user.role? :admin
      can :manage, :all
    end
    
    if user.role? :contributor
      can :read, :all

      cannot :create, :all
      cannot :read, User
      # cannot :read, Project, :action => 'manage'
    end
  end
  

end
