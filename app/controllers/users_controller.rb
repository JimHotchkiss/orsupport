class UsersController < ApplicationController
  include UsersHelper

  def new
    new_user
  end

  def create
    new_user
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    if @user.save
      session[:user_id] = @user.id
      redirect_to issues_path
    else
      render 'users/new'
    end
  end
end
