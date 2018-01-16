class PostsController < ApplicationController
  
  def show
    set_post
  end

  def new
    @post = Post.new(post_params)
  end

  def create
    @post = Post.create(post_params)
    if @post.valide?
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    set_post
  end

  def update
    set_post
    @post.update(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
