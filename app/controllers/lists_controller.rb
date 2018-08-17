class ListsController < ApplicationController
  def index
    @issues = Issue.all
  end
end
