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
end
