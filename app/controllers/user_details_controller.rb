class UserDetailsController < ApplicationController  
  def create
    @user = User.first

    @user_detail = UserDetail.create(user_details_params)
    redirect_to user_path(@user)
  end

  private

  def user_details_params
    params.require(:user_detail).permit(:name, :nationality, :gender, :employee)
  end
end
