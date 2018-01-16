class PostsController < ApplicationController
  def show
    current_post
  end

  def new
    @post = Post.new
  end

  def edit
    current_post
  end

  def update
    current_post

    @post.update(post_params)
    if @post.valid?
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
