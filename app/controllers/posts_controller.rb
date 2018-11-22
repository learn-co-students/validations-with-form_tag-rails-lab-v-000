require 'pry'
class PostsController < ApplicationController


  def show
    @post = Post.find(params[:id])
  end


  def new
    @post = Post.new
  end

  def create
    @post = Post.find(params[:id])
    @post = Post.create(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else

      render :new
    end
  end


  def edit

    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find(params[:id])

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
