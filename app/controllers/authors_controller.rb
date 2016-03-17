class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update]
  
  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end
  
  def edit 
    
  end
  
  def update
    if Post.new(post_params).valid?
      @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private
  
  def set_author
    @author = Author.find(params[:id])
  end
  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
