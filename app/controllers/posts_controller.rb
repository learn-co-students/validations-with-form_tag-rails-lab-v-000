class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def show
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


  private

  def post_params
    params.permit(:title, :category, :content)
  end

  # Referenced Lab : rails-resource-and-scaffold-generator-v-000
  def set_post
    @post = Post.find(params[:id])
  end

end

# rspec spec/controllers/posts_controller_spec.rb
# rspec spec/views/posts/edit.html.erb_spec.rb
