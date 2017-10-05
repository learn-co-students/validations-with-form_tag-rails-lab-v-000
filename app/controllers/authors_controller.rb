class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    if !@author.save
      render :new
    else
    redirect_to author_path(@author)
  end
end

  private

  def author_params
    params.permit(:email, :name, :phone_number)
  end
end
