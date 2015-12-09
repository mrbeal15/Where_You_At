class GroupsController < ApplicationController

  def destroy
    @group = Group.find_by(id: params[:id])
    @group.destroy
  end

  def index
    @user = User.find(1)
    @groups = @user.groups
    render :json => @groups
  end

  def create
    @user = User.find_by(id: group_params[:id])
    @group = Group.new(name: group_params[:name], event: group_params[:event], admin_id: @user.id)
    if @group.save
      @grouping = Grouping.create(user_id: @user.id, group_id: @group.id, joined?: true)
      render :json => {group: @group, grouping: @grouping}
    end
  end

  def show
    @group = Group.find_by(name: params[:id])
    @users = @group.users
    render :json => {users: @users}
  end


  def show_map
    @group = Group.find_by(id: params[:id])
    @users = @group.users
    render :json => @users
  end

  def invite
  end

  private

  def group_params
    params.permit(:name, :event, :id)
  end


end
