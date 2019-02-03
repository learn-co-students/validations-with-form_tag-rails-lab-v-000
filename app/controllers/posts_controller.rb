class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update]

  def show
  end

  def new
    @post = Post.new
  end

  def edit
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

  def find_post
    @post = Post.find(params[:id])
  end
end
