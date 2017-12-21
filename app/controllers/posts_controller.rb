class PostsController < ApplicationController
  def show
  end

  def new
    @post = Post.new
  end

  def edit
    @post = set_post!
  end

  def create
    @post = Post.new(post_params)

    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update
    @post = set_post!
    @post.title = post_params[:title]
    @post.category = post_params[:category]
    @post.content = post_params[:content]
  if @post.valid?
    @post.save
    redirect_to post_path(@post)
  else
    render :edit
  end

  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
