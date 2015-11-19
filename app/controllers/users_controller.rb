class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user && @user.save
      # not sure what to put here yet because we don't have views yet
      #create session?
      #redirect to user's groups
    else
      @errors = @user.errors.full_messages
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user.created_groups
      @created_groups = @user.created_groups
    end
    if @user.groups
      @groups = @user.groups
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :phone)
  end

end
