class Ability
  include CanCan::Ability
  
  def initialize(user)
<<<<<<< HEAD
    user ||= User.new #guest account
    
=======
      
>>>>>>> 26438d415689f004adf002f5ca10ac3a0b5dec99
    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
<<<<<<< HEAD
    end
  end
=======
      cannot :read, User
      cannot :read, Project, :action => 'manage'
    end
  end
  
>>>>>>> 26438d415689f004adf002f5ca10ac3a0b5dec99
end
