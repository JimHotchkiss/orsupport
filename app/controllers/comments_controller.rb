class CommentsController < ApplicationController

  def create
    @issue = Issue.find(params[:issue_id])
    @comment = @issue.comments.create(params[:comment].permit(:name, :body))

    redirect_to issue_path(@issue)
  end
end
