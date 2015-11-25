class GroupingsController < ApplicationController

  def create
    @user = User.find_by(email: grouping_params[:email])
    @group = Group.find_by(name: params[:id])
    puts "============PARAMS==========="
    p grouping_params
    puts "=============================="

    p '*****************GROUP***********'
    p @group
    p '******************USER***********'
    p @user
    @grouping = Grouping.create(group_id: @group.id, user_id: @user.id, joined?: true)
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
