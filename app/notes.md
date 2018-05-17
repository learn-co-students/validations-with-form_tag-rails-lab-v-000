This is a standard error messages from active record validation site called Displaying Validation Errors in Views.

Add field_with_errors in the input field class="". use the Rails form helpers to generate your forms, when a validation error occurs on a field, it will generate an extra <div> around the entry.

<%= text_field_tag "name", @author.name%> : The @author.name prefill the field with author name

<% if @author.errors.any? %>
  <div id="error_explanation">
    <h2>There were some errors</h2>
    <ul>
      <% @author.errors.full_messages.each do |msg| %>
        <li> <%= msg %></li>
      <% end %>
    </ul>
  </div>
<% end %>
