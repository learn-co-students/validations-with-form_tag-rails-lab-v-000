class AuthorsController < ApplicationController
  def show # implicitly renders views/authors/show.html.erb view file to show a single author
    @author = Author.find(params[:id])
  end

  def new # implicitly renders views/authors/new.html.erb view file (form to create a new author)
    @author = Author.new
  end
# can use same form code for empty and pre-filled forms b/c code in #new creates an empty author instance whose attributes are all nil
  def create # post "/authors" route receives data submitted in form to create new author, and it's mapped to this #create action
    @author = Author.new(author_params) # instantiate author instance with attributes mass assigned from strong params
    # validations are run with #save (which interacts with DB). Instance is only successfully saved to DB if all its attributes are valid
    if @author.save # if the instance is valid b/c all of its attributes are valid, it's successfully saved to DB
      redirect_to author_path(@author) # redirect to show page to show author just created (we re-retrieve instance from DB with new instance variable in show action)
    else # otherwise, the instance is INVALID and is therefore populated with errors (ActiveModel::Errors object)
      render :new # render form to create new author, displaying errors from SAME instance and prefilling fields w/ invalid values submitted beforehand
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
