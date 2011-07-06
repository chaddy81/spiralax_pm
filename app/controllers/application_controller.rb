class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # Get roles accessible by the current user
  #----------------------------------------------------
  def accessible_roles
    @accessible_roles = Role.accessible_by(current_ability,:read)
  end
 
  # Make the current user object available to views
  #----------------------------------------
  def get_user
    @current_user = current_user
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    render 'public/422.html'
  end
  
end
