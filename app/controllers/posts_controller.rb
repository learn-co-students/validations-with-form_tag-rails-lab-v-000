class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]
  

  

def update
    if @post.update(post_params)
    redirect_to post_path(@post)
    else
    render :edit
    end    
end


def create
    @post = Post.new(post_params)
    if @post.valide?
    @post.save
    redirect_to post_path(@path)
    else
    render :new
    end
end


  private

  def set_post!
      @post = Post.find(params[:id])
  end



  def post_params
    params.permit(:title, :category, :content)
  end
end
