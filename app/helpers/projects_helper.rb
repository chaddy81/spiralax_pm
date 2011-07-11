module ProjectsHelper
  def activity
    if session[:current_project].nil?
      render "projects/all_activity"
    else
      render "projects/activity"
    end
  end
  
  def select_project
    if session[:current_project].nil?
      render "projects/select_with"
    else
      render "projects/select_without"
    end
  end
  
  def get_user_projects
    return User.find(current_user.id).projects
  end
end
