class UsersController < ApplicationController

  def index
    @users = User.all
    render :json => {users: @users}
  end

  def create
    @user = User.new(user_params)
    if @user && @user.save
      render :json => { id: @user.id, status: 200 }
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user.groups
      @groups = @user.groups
      render :json => {groups: @groups}
    else
      render :json => "You are not in any groups"
    end
  end

  def coordinates
    @user = User.find_by(id: params[:id])
    if @user
      @user.update_attributes(coord_params)
    end
  end

  private

  def user_params
    params.permit(:email, :first_name, :last_name, :password)
  end

  def coord_params
    params.permit(:lat, :lng)
  end

end
