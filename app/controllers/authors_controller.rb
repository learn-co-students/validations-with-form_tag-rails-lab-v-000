class AuthorsController < ApplicationController
  # before_action :set_author!, only: [:show, :edit, :update]
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

  # def update
  #   if @author.update(author_params)
  #
  #   end
  #
  # end


  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  # def set_author!
  #   @author = Post.find(param[:id])
  # end
end
