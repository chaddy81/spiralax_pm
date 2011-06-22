module ApplicationHelper
  
  def nav
    if session[:current_project].nil?
      return
    else
      render 'layouts/nav'
    end
  end
end
