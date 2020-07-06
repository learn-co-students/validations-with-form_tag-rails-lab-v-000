class PostsController < ApplicationController
  def show
    post_find
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    post_find
  end

  def update
    post_find
    
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_find
    @post = Post.find(params[:id])
  end
  

  def post_params
    params.permit(:title, :category, :content)
  end
end
