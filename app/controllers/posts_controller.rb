require 'pry'

class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end


  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  set_post!
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

  def set_post!
    @post = Post.find(params[:id])
  end
end
