class PostsController < ApplicationController
  def show #define
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit #define
    @post = Post.find(params[:id])
  end

  def create #define the "valid path"; define the "invalid path"
    @post = Post.new(post_params)
    
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update #define the "valid path"; define the "invalid path"
    @post = Post.find(params[:id])

    if @post.valid?
       redirect_to post_path(@post)
     else
      render :update
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
