class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user && @user.save
      render :json => { id: @user.id, status: 200 }
    else
      p @user.errors.full_messages
      p "not saved"
      render :json => {status: "User not saved"}
    end
  end

  def show
    @user = User.find(1)
    # when would we use this?
    # if @user.created_groups
    #   @created_groups = @user.created_groups
    # end
    if @user.groups
      @groups = @user.groups
      render :json => {groups: @groups}
    else
      render :json => "You are not in any groups"
    end
  end

  private

  def user_params
    params.permit(:email, :first_name, :password)
  end

end
