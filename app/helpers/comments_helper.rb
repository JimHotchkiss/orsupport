module CommentsHelper

  def find_issue
    @issue = Issue.find(params[:issue_id])
  end

  def comment_user
    @comment.user_id = current_user.id
    @comment.save
  end

  def comment_user_email
    @comment.name = User.find_by(id: current_user.id).email
    @comment.save
  end

end
