class CommentsController < ApplicationController
  def create
    @discussion = Discussion.find(params[:discussion_id])
    @comment = @discussion.comments.new
    
    redirect_to @discussion
  end
  
  def destroy
    @discussion = Discussion.find_by_id(params[:discussion_id])
    @comment = @discussion.comments.find_by_id(params[:id])
    @comment.destroy
    redirect_to @discussion
  end
end
