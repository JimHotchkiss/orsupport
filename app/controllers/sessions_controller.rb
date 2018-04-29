class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(:email => params[:email])
    binding.pry
    session[:user_id] = @user.id
    redirect_to issues_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
