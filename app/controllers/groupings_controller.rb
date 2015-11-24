class GroupingsController < ApplicationController

  def create
    @user = User.find_by(email: grouping_params[:email])
    @group = Group.find(params[:id])
    Rails.logger.info(@group.inspect)
    Rails.logger.info(@user.inspect)
    @grouping = Grouping.create(group_id: @group.id, user_id: @user.id, joined?: true)
    Rails.logger.info(@grouping.inspect)
    if @grouping
      render :json => @grouping
    end
  end

  def destroy
    @grouping = Grouping.find_by(id: params[:id])
    @grouping.destroy
  end

  private

  def grouping_params
    params.permit(:email, :group_id)
  end

end
