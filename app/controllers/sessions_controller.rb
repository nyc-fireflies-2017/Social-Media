class SessionsController < ApplicationController

  def login
    @user = User.find(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect @user
    else
      render 'login'
    end
  end

  def logout
    session.clear
    redirect :back
  end



end
