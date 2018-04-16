class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    #define controller action
  end

  def create #define the "valid path"; define the "invalid path"
    @author = Author.create(author_params)

    redirect_to author_path(@author)
  end

  def update #define the "valid path"; define the "invalid path"
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
