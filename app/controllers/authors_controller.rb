class AuthorsController < ApplicationController

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    
    if @author.valid?
      @author.save
      
      redirect_to author_path(@author)
      
    else
      #binding.pry
      render :new
    end
    
  end
  
  def edit
    @author = Author.find_by(id: params[:id])
  end
  
  def update
    @author = Author.find_by(id: params[:id])
    @author.name = params[:name]
    @author.email = params[:email]
    @author.phone_number = params[:phone_number]
    
    if @author.valid?
      @author.update(author_params)
      redirect_to author_path(@author)
      
    else
      render :edit
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
