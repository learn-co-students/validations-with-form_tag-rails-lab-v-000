class AuthorsController < ApplicationController

  #TODO: Did you define routes and resources properly?
  #Consider #rake routes and check if authors_path should be author_path
  #or not??? Check it out.

  def show
    @author = Author.find(params[:id])
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

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
