class SessionsController < ApplicationController
  def new
  end

  def create 
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash[:danger] = 'Invalid email/password'
      render 'new'
    end
  end

  def destroy 
    @current_user = nil
    logout
    flash[:success] = 'Logged out successfully'
    redirect_to root_path
  end

end
