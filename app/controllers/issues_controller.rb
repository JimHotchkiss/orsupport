class IssuesController < ApplicationController

  def index
  end

  def new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.save
    redirect_to @issue
  end

  def show
    @issue = Issue.find(params[:id])
  end


  private
  def issue_params
    params.require(:issue).permit(:title, :description, :solution)
  end

end
