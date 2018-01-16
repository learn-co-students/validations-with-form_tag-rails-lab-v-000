class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit # Route "/posts/:id/edit" is mapped to this #edit action, which implicitly renders views/posts/edit.html.erb view file (form to edit post)
    @post = Post.find(params[:id])
  end

  def update # Route patch "/posts/:id" receives data submitted in edit form and is mapped to this #update action
    @post = Post.find(params[:id]) # find post instance being edited by its id attribute value (whatever replaces :id route variable in URL)
    # update @post instance's attribute values from strong params via mass assignment
    if @post.update(post_params) # Changes are only saved to DB if @post's attributes are valid. (Validations are run b/c #update interacts with DB)
      redirect_to post_path(@post) # redirect to show page to show the post just edited
    else # Otherwise, @post instance is invalid and is therefore populated with errors (ActiveModel::Errors object), so
      render :edit # render views/posts/edit.html.erb (edit form), displaying errors from the SAME @post instance and pre-filling fields with invalid values submitted beforehand
    end
  end

  private

  def post_params # private method returns strong params
    params.permit(:title, :category, :content)
  end
end
