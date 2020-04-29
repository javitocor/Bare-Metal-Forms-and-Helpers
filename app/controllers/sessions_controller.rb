class SessionsController < ApplicationController
  def new
  end

  def create 
    user = User.find_by(email: params[:email])
    if user && user.authenticate(password: params[:password])
      redirect_to @user
    else
      flash[:danger] = 'Invalid email/password'
      render 'new'
    end
  end

  def destroy 
  end

end
