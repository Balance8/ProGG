class UsersController < ApplicationController
  before_action :authorize, only: [:edit, :update, :delete]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = params[:id] ? User.find(params[:id]) : current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = 'You have successfully signed up!'
      redirect_to root_path
    else
      render :new
    end
 end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params.require(:user).permit(:fname, :lname, :username, :email, :rank))
      redirect_to profile_path
    else
      render :edit
    end
  end

  def destroy
    current_user.destroy
    redirect_to root_path
  end

  private

  # Implement Strong Params
  def user_params
    params.require(:user).permit(:username, :rank, :fname, :lname, :email, :password, :password_confirmation)
  end
end
