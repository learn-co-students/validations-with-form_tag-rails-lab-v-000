class PostsController < ApplicationController
  def show
    @post = Post.find_by_id(params[:id])
  end

  def new 

  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else 
      render :'posts/new'
    end 
  end 

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    @post = Post.find_by_id(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else 
      render :'posts/edit'
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
