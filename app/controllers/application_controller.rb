class ApplicationController < ActionController::Base
  protect_from_forgery

private
  
  def current_user
    # return current user if already logged in, if just logged in then 
    # find user via session[:user_id] and return it
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  # make it so this is accessible from view as helper method
  helper_method :current_user

  def authorize
    redirect_to :back, alert: "You must be logged in to do that." if current_user.nil?
  end
end