class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    #.create will return the object regardless of whether it was saved or not,
    #.save => returns false/true
    #with .create will never hit else.
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def show
    @author = Author.find(params[:id])
  end



  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
