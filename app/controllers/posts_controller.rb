class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
    @post.update(post_params)
    if @post.valid?
    redirect_to post_path(@post)
    else
    render :edit
    end
  end
  
  def errors_message
   errors.add(:title, "Name can't be blank") 
   errors.add(:content, "Content too short")
   errors.add(:category, "Invalid category") 
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
