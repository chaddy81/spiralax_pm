class Ability
  include CanCan::Ability
  
  def initialize(user)
<<<<<<< HEAD
=======

>>>>>>> 36c589f279a64dd219d2f21c66c7dc3220b3a82a
    user ||= User.new #guest account

    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
<<<<<<< HEAD
=======
      can :create, :all
>>>>>>> 36c589f279a64dd219d2f21c66c7dc3220b3a82a
      cannot :read, User
      cannot :read, Project, :action => 'manage'
    end
  end
  

end
