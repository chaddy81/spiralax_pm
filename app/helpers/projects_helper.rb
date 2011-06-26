module ProjectsHelper
  def activity
    if session[:current_project].nil?
      render "projects/all_activity"
    else
      render "projects/activity"
    end
  end
  
  def select
    if session[:current_project].nil?
      render "projects/select_with_default"
    else
      render "projects/select_without_default"
    end
  end
end
