class GroupingsController < ApplicationController

  def create
    @user = User.find_by(id: current_user)
    @group = Group.find_by(id: params[:id])
    #see if current_user is made
    # @grouping = @user.groupings.create(group_id: @group.id, user_id: @user.id, joined?: true)
    #redirect to group show page
    @grouping = Grouping.where(group_id: @group.id, user_id: @user_id)

    if @grouping
      @grouping.update_attributes(joined?: true)
    end
  end

  def destroy
    @grouping = Grouping.find_by(id: params[:id])
    @grouping.destroy
    #redirect to user's show page
  end



end
