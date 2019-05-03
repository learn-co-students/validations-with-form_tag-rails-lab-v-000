class PostsController < ApplicationController
  before_action :set_post!, only: [:update]

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
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
  if @post.update(post_params)
    redirect_to post_path(@post)
  else
    render :edit
  end
end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
