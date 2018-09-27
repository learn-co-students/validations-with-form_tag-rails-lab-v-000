require 'pry'
class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    #binding.pry
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      #binding.pry
      render :new
    end

  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
