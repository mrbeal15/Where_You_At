class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      user_id = user.id
      render :json => { id: user_id, status: 200 }
    end
  end

  def destroy
    session[:user_id] = nil
  end


end
