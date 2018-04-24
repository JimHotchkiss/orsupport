class IssuesController < ApplicationController

  def index
    @issues = Issue.all.order('created_at DESC').limit(5)
  end

  def new
    @issue = Issue.new
  end

  def create
    binding.pry
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to @issue
    else
      render 'new'
    end
  end

  def show
    @issue = Issue.find(params[:id])
  end


  private
  def issue_params
    params.require(:issue).permit(:title, :description, :solution, :category_ids => [])
  end

end
