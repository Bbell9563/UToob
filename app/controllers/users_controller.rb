class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def index
    @users = User.all
  end

  def show
  end

  def edit 

  end

  def update

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy 
    redirect_to users_path
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
