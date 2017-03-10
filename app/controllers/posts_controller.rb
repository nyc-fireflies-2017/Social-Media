class PostsController < ApplicationController

  def index
    @posts = Post.recent
    @post = Post.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
