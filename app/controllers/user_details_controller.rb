require 'date'

class UserDetailsController < ApplicationController
  def edit
    @user_detail = UserDetail.find(params[:id])
  end
  

  def update
    @user_detail = UserDetail.find(params[:id])
    
    @user_detail.update(user_details_params)
    @user_detail.update(birthdate: Date.parse(params[:user_detail][:birthdate]))

    redirect_to user_path(@user_detail.user_id)
  end

  private

  def user_details_params
    params.require(:user_detail).permit(:name, :nationality, :birthdate, :gender, :employee)
  end
end
