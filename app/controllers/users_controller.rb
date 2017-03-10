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
    @user = User.create(params[:user])
    if @user.save
    else
    end
  end



  def edit
  end

  def update
  end

  def delete
  end


end
