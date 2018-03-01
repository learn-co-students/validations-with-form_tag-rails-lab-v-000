class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end
  
  def edit
  @author = Author.find(params[:id])
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

def errors_message
   errors.add(:name, "Name can't be blank") 
   errors.add(:email, "Email has already been taken")
end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
