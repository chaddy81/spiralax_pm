class Ability
  include CanCan::Ability
  
  def initialize(user)

    user ||= User.new #guest account

    if user.role? :admin
      can :manage, :all
    elsif user.role? :contributor
      can :read, :all
      can :create, [Project, To_do, Milestone, Discussion, Upload]
      cannot :destroy, [Project, User]
      cannot :read, User
      # cannot :read, Project, :action => 'manage'
    else
      can :create, Project
    end
  end
  

end
