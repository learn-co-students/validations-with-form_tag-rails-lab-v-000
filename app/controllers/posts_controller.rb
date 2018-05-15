require 'pry'
class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new(post_params)
  end

  def create
   @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@author)
    else
      render :new
    end
  end

  def edit
  set_post!
  end

  def update
    set_post!
    @post.update(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
