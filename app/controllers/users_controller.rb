class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    session[:user_id] = @user.id
    flash[:notice] = "You are now signed up!"
    redirect_to edit_user_path(@user)
    else
      render 'new'
    end
  end

  def index
    @notice = flash[:notice]
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def update
    @user = User.find.params[:id]
    @user.update (user_params)
    redirect_to @user
  end

  def user_params
    params.require(:user).permit(:name, :handle, :email, :password, :password_confirmation)
  end
end
