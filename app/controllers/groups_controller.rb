class GroupsController < ApplicationController

  def destroy
    @group = Group.find_by(id: params[:id])
    @group.destroy
    #redirect to user's show page
  end

  def create
    @user = current_user
    #make current user helper method
    @group = Group.new(name: group_params[:name], event: group_params[:event]).merge(admin_id: @user.id)
    if @group.save
      @grouping = Grouping.create(user_id: @user.id, group_id: @group.id, joined?: true)
    else
      @errors = @group.errors.full_messages
    end
  end

  def show
    @group = Group.find_by(id: params[:id])
    @users = @group.users
    @admin = @group.admin
    #helper method for joined/unjoined button?
  end


  def show_map
    @group = Group.find_by(id: params[:id])
    @users = @group.users
  end

  def invite
  end

  private

  def group_params
    params.require(:group).permit(:name, :event)
  end


end
