class Ability
  include CanCan::Ability
  
  def initialize(user)

    user ||= User.new #guest account

    if user.role? :admin
      can :manage, :all
    elsif user.role? :contributor
      can :read, :all
    else
      can :create, Project
    end
  end
  

end
