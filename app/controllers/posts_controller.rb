class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  
  def edit

  end

  def create
    @post = Post.new(params)

    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update

  end


end
