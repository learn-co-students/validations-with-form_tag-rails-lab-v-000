class Author < ActiveRecord::Base

<% if @author.errors.any? %>
  <div id="error_explanation">
    <h2><%= pluralize(@author.errors.count, "error") %> prohibited this article from being saved:</h2>

    <ul>
    <% @author.errors.full_messages.each do |msg| %>
      <li><%= msg %></li>
    <% end %>
    </ul>
  </div>
<% end %>

  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, length: { is: 10 }
end
