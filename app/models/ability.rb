class Ability
  include CanCan::Ability
  
  def initialize(user)
      
    if user.role? :admin
      can :manage, :all
    else
      can :read, Discussion
    end
  end
  
end
