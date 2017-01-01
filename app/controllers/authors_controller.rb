class AuthorsController < ApplicationController


  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new(author_params)
  end


  def edit

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

  def update

  end

private

  def author_params
    params.permit(:name, :phone_number, :email)
  end


end
