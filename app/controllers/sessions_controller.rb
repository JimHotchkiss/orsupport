class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(:email => params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to issues_path
    else
      flash[:error] = "Please check your email or password"
      render 'sessions/new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
