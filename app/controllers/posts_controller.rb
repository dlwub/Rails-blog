class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = Post.where(author_id: @user.id)
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user

    if @post.save
      redirect_to user_post_path(current_user.id, @comment.post_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:comment).permit(:title, :text)
  end
end
