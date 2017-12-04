class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post2 = Post.new(post_params)
    if @post2.valid?
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
    else
      @post=@post2
      @post.id = params[:id]
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
