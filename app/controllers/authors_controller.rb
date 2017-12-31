class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
      if @author.save
        redirect_to author_path(@author)
      else 
        render :new
      end 
  end

  def edit 
  end 

  def update
    if @author.update(post_params)
      redirect_to author.path(@author)
    else
      render :edit 
    end 
  end 

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
