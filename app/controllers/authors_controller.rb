class AuthorsController < ApplicationController
  def show #define
    @author = Author.find(params[:id])
  end

  def new #define
    @author = Author.new
  end

  def edit #define
    @author = Author.find(params[:id])
  end

  def create #define the "valid path"; define the "invalid path"
    @author = Author.new(author_params)
    
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def update #define the "valid path"; define the "invalid path"
    @author = Author.find(params[:id])

    @author.update(author_params)

    redirect_to author_path(@author)
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
