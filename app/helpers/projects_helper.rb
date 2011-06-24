module ProjectsHelper
  def activity
    if session[:current_project].nil?
      render "projects/all_activity"
    else
      render "projects/activity"
    end
  end
end
