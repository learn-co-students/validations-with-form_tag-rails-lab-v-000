class PostsController < ApplicationController
  before_action :find_post!

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def find_post!
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
