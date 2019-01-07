class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    @author = author.find(params[:id])
  end

  def create
    @author = Author.create(author_params)

    redirect_to author_path(@author)
  end

  def update
    @author = author.find(params[:id])

    @author.update(author_params)

    redirect_to author_path(@author)
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
