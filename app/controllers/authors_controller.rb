# Author controller. Show, new, edit, create and update
class AuthorsController < ApplicationController
  before_action :find_author, only: %i[show edit update]

  def show; end

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

  def edit; end

  def update
    @author = Author.find(params[:id])
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def find_author
    @author = Author.find(params[:id])
  end
end
