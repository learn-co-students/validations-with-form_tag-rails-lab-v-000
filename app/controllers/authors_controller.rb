class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      redirect_to author_path(@author)
    else
      # binding.pry
      render :new
    end
  end

  def edit
    @author = Author.find_by_id(params[:id])
  end

  def update
    @author = Author.find_by_id(params[:id])
    @author.update(author_params)
    if @author.valid?
      redirect_to author_path(@author.id)
    else
      render :edit
    end  
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
