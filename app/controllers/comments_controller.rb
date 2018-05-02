class CommentsController < ApplicationController
  include CommentsHelper

  def create
    find_issue

    @comment = @issue.comments.create(params[:comment].permit(:body))
    comment_user
    comment_user_email
    redirect_to issue_path(@issue)
  end

  def destroy
    find_issue
    @comment = find_issue.comments.find(params[:id])
    @comment.destroy

    redirect_to issue_path(@issue)
  end

end
