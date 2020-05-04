class UsersController < ApplicationController
  before_action :user_find, only: [:edit, :update]
  def edit
  end

  def update
    @user = User.update(user_params)
    redirect_to authenticated_root_path
  end

  private
  def user_find
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:lastname,:firstname,:phonenumber,:email)
  end
end
