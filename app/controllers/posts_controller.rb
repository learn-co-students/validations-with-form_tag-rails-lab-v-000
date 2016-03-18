class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  before_action :saved_title, only: [:edit, :update]
  
  def index 
    
  end
  
  def show
    
  end
  
  def new 
    @post = Post.new
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

  def edit
  end

  def update
    # binding.pry
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      @title = saved_title
      render :edit
    end
  end

  private

  def saved_title
    @title = Post.find(params[:id]).title
  end

  def set_post 
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.permit(:title, :category, :content)
  end
end
