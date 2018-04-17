class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @errors = {}
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    @errors = Hash.new
    if @post.valid?
      @post.save
        redirect_to post_path(@post)
    else
      @errors = @post.errors if !@post.errors.nil?
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
