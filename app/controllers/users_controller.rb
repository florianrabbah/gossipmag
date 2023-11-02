class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

def create
  @users = User.new(users_params)
  @users.save
  redirect_to users_path


end


end
