class UsersController < ApplicationController
  before_action :user_find, only: [:edit, :update]

  def new
    @user = User.new
    #@user = User.new(email: "ncixxtt@gmail.com", lastname: "cc", firstname: "vvv", phonenumber: "0497645328", password: "123456", password_confirmation: "123456")

  end

  def create
    @user = User.new(user_params)
    @user.password = "123456"
    @user.password_confirmation = "123456"
  end

  def edit
  end

  def update
    @user = User.update(user_params)
  end

  private
  def user_find
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:lastname,:firstname,:phonenumber,:email)
  end
end
