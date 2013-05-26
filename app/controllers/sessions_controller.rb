class SessionsController < ApplicationController
  def new
  end

  def create # login
  	user = User.find_by_email(params[:email])
  	# check if they're in database and that they're authenticated
  	# with correct password
  	if user && user.authenticate(params[:password])
		  session[:user_id] = user.id
  		# fix this so that login happens via ajax
  		redirect_to root_url
  	else
  		flash.now.alert = "Email or password is invalid."
  		render :new
  	end
  end

  def destroy
  	# log out user by setting user id to nil
  	# session[:user_id] = nil
  	reset_session
  	redirect_to root_url, notice: "Logged out successfully."
  end
end
