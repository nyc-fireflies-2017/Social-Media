module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def require_login
    redirect '/' unless current_user
  end

  def logged_in?
    !!current_user
  end

  def author?(class_name)
    current_user.id == class_name.user_id
  end
end
