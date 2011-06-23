module ProjectsHelper
  def activity
    if session[:current_project].nil?
      return "Poop"
    else
      render "projects/activity"
    end
  end
end
