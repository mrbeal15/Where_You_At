module ApplicationHelper

  def current_user
    @current_user ||= User.find_by_id(session[:user])
  end

  def logged_in?
    current_user != nil
  end

  helper_method :current_user
  helper_method :logged_in?

end
