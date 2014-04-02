class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  def index
    @users = User.all
  end

  def new
    
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    end

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :nick_name, :email, :phone_number)
  end
  def set_user
    @user = User.find(params[:id])
  end

end 


