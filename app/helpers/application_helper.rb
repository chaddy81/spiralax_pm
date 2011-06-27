module ApplicationHelper
  
  def nav
    if session[:current_project].nil?
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
end
