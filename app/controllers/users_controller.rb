class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def index
    @user = User.find(params[:id])
    @friends = @user.friendships.all
    # @friend_posts = @friends.posts.all
  end


  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      render "index"
    else
    end
  end



  def edit
  end

  def update
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end


end
