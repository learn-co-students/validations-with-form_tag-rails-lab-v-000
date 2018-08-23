class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    
    if @author.save
      redirect_to author_path(@author)
    else
      @error_explanations = @author.errors.full_messages
      @errors = {
        name: !@author&.errors[:name]&.empty?,
        email: !@author&.errors[:email]&.empty?,
        phone_number: !@author&.errors[:phone_number]&.empty?
      }
      render :'authors/new'
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
