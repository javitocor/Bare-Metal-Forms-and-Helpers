class UsersController < ApplicationController
  before_action :find_user, only: %i[show edit update destroy]

  def index
    @users = User.all.order('created_at DESC')
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User created successfully"
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "User updated successfully"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy

    flash[:success] = "User deleted successfully"
    redirect_to root_path
  end

  def searcher
    @user = User.find_by(username: params[:search])

    if @user
      redirect_to @user
    else      
      flash[:danger] = "User not found"
      redirect_to root_path
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
