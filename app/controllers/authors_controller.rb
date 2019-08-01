class AuthorsController < ApplicationController
  def show
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)
  end

  def update
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
