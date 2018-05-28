class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update]

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end


  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  # Referenced Lab : rails-resource-and-scaffold-generator-v-000
  def set_author
    @author = Author.find(params[:id])
  end

end

# rspec spec/controllers/authors_controller_spec.rb
# rspec spec/views/authors/new.html.erb_spec.rb
