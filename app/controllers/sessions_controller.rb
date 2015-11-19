class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # probably will redirect
    else
      #show errors?
    end
  end

  def destroy
    session[:user_id] = nil
    # probably will redirect
  end


end
