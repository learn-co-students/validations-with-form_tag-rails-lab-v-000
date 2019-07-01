class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params) #.new because create presaves
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

#<!-- The validations are created using this if else statement and @object_name.errors.any? and @post.errors.full_messages-->
#<!-- Erb tags are put within the div class next to the class name-->
#<!-- <%= ' (class_name)_with_errors' if @object_name.errors[:attribute].any? %> -->
#Displaying Pre-Field Errors With errors[]
#ex;<%= text_field_tag "name", @person.name %>

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

end
