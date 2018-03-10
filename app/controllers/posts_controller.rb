class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    current_post
  end

  def edit
    current_post
  end

  def update
    current_post
    if @post.valid?
      @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def current_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
