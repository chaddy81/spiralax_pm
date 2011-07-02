class CommentsController < ApplicationController
  def create
    @project = Project.find(session[:current_project])
    @discussion = @project.discussions.find(params[:discussion_id])
    @comment = @discussion.comments.create(params[:comment])
    
    redirect_to project_discussion_path(@project, @discussion)
  end
  
  def destroy
    @project = Project.find(session[:current_project])
    @discussion = @project.discussions.find(params[:discussion_id])
    @comment = @discussion.comments.find(params[:id])
    @comment.destroy
    
    redirect_to project_discussion_path(@project, @discussion)
    
  end
end
