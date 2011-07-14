module ApplicationHelper
  
  def nav
    if session[:current_project].nil? || user_session.nil?
      return
    else
      render 'layouts/nav'
    end
  end
  
  def header
    if current_user.nil?
      return
    else
      render 'layouts/header'
    end
  end
  
  def alert_it
    if alert.nil?
      return
    else
      render 'layouts/alert'
    end
  end
  
  def current_project
    return session[:current_project]
  end
  
  def devise_invitable_custom_params(resource_name)
    case resource_name
    when :user
      {
        :project_id => session[:current_project]
      }
    end
  end
  


end
