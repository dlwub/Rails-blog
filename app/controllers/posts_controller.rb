class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = Post.where(user_id: @user.id)
  end

  def show
    @user = User.find(params[:user_id])
    @post = User.Post.find(params[:id])
  end
end
