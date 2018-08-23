class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      @error_explanations = @post.errors.full_messages
      render :'posts/edit'
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
