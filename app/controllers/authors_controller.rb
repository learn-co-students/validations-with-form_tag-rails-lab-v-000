class AuthorsController < ApplicationController
  before_action :set_author!, only: [:show, :edit, :update]
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new(author_params)
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
    set_author!
  end

  def update
    set_author!
    @author.update(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end

  def set_author!
    @author = Author.find(params[:id])
  end
end
