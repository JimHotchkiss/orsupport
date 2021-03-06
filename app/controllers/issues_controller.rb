class IssuesController < ApplicationController
  before_action :authentication_required
  include IssuesHelper

  def index
    @issues = Issue.all.order('created_at DESC').limit(5)
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      issue_user
      redirect_to @issue
    else
      render 'new'
    end
  end

  def show
    find_issue
  end

  def edit
    find_issue
  end

  def update
    find_issue
    if @issue.update(params[:issue].permit(:title, :description, :solution, :category_ids => []))
      redirect_to @issue
    else
      render 'edit'
    end
  end

  def destroy
    find_issue.destroy
    redirect_to issues_path
  end

  def upvote
    @issue = Issue.find(params[:id])
    @issue.upvote_by current_user
    redirect_to @issue
  end

  private
  def issue_params
    params.require(:issue).permit(:title, :description, :solution, :category_ids => [])
  end

end
