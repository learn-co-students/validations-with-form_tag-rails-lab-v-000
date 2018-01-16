class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update]

  def show

  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    # binding.pry
    if @author.save
      redirect_to author_path(@author)
    else
      # binding.pry
      render :new
    end
  end

  def update

  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def set_author
    @author = Author.find(params[:id])
  end
end
