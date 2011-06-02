class CommentsController < ApplicationController
  def create
    discussion = Discussion.find_by_id(params[:discussion_id])
    discussion.comments.create(params[:comment])
    redirect_to discussion
  end
  
  def destroy
    discussion = Discussion.find_by_id(params[:discussion_id])
    comment = Comment.find_by_id(params[:id])
    comment.destroy
    redirect_to discussion
  end
end
