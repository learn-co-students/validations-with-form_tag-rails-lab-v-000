class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
      @errors = Hash.new
  end

  def new
    @author = Author.new
    @errors = Hash.new
  end

  def create
    @author = Author.new(author_params)
    @errors = Hash.new
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      @errors = @author.errors if !@author.errors.nil?
      render :new
    end

  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
