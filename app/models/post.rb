class Post < ActiveRecord::Base


<% if @post.errors.any? %>
  <div id="error_explanation">
    <h2><%= pluralize(@post.errors.count, "error") %> prohibited this article from being saved:</h2>

    <ul>
    <% @post.errors.full_messages.each do |msg| %>
      <li><%= msg %></li>
    <% end %>
    </ul>
  </div>
<% end %>

  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
  message: "%{value} is not a valid category" }
end
