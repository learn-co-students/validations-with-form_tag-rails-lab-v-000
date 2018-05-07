class AuthorsController < ApplicationController
  def show
    # binding.pry
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
      render :new
    end
  end
  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
# <%= form_tag("/people") do %>
#   <% if @person.errors.any? %>
#     <div id="error_explanation">
#       <h2>There were some errors:</h2>
#       <ul>
#         <% @person.errors.full_messages.each do |message| %>
#           <li><%= message %></li>
#         <% end %>
#       </ul>
#     </div>
#   <% end %>
 