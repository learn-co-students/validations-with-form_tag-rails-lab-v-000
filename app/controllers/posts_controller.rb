class PostsController < ApplicationController
  #  this callback finds the post by id for each view
  before_action :set_post!, only: [:show, :edit, :update]

  def show
    # --@post = Post.find(params[:id]) --callback takes care of this
  end

  def edit
    # @post = Post.find(params[:id]) --callback takes care of this
  end

  def update
    if @post.update(post_params)

      redirect_to post_path(@post)
    else
      # below the .errors method to check the error messages for a specific attribute in this case for each field in the form
      # @post.errors[:title]  for reference
      # @post.errors[:category]  for reference
      # @post.errors[:content] for reference

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
