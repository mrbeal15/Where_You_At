class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      user_id = user.id
      render :json => { id: user_id, status: 200 }
    else
      render :json => { message: "Your credentials did not match", status: 401 }
    end
  end

  def destroy
    session[:user_id] = nil
    # probably will redirect
  end


end
