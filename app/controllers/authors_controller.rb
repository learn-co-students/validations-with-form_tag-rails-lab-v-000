class AuthorsController < ApplicationController
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

  def edit
    @testauthor = Author.new(author_params)
    if @testauthor.valid?
      @author.update(post_parmas)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  def update

  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
