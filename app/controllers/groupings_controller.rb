class GroupingsController < ApplicationController

  def create
    @user = User.find_by(id: current_user)
    @group = Group.find_by(id: params[:id])
    @grouping = Grouping.where(group_id: @group.id, user_id: @user_id, joined?: true)
  end

  def destroy
    @grouping = Grouping.find_by(id: params[:id])
    @grouping.destroy
    #redirect to user's show page
  end



end
