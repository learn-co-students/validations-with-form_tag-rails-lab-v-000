class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update] #used convient helper method on certain routes
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post.update(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
    
  end

#<!-- The validations are created using this if else statement and @object_name.errors.any? and @post.errors.full_messages-->
#<!-- Erb tags are put within the div class next to the class name-->
#<!-- <%= ' (class_name)_with_errors' if @object_name.errors[:attribute].any? %> -->
#Displaying Pre-Field Errors With errors[]
#ex;<%= text_field_tag "name", @person.name %>
  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def set_post!
    @post = Post.find(params[:id]) #convient helper method
  end
end
