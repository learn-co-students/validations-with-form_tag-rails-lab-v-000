class AuthorsController < ApplicationController
  def show
    @author = find_author
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
    @author = find_author
  end

  def update
    @author = find_author
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def find_author
    Author.find(params[:id])
  end
end
