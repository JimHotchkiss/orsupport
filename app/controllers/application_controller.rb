class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?, :authentication_required, :current_user

  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
      !current_user.nil?
  end

  def current_user
   return unless session[:user_id]
   @current_user ||= User.find(session[:user_id])
 end

 def users_issue
   @users_issue = Issue.find_by()
 end

end
