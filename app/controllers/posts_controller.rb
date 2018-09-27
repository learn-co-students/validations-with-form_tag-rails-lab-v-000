class PostsController < ApplicationController
  before_action :find!, only: [:show, :edit, :update]
  
  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    if @post.valid?
      redirect_to post_path(@post.id)
    else
      render :edit
    end
  end

  private

  def find!
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
