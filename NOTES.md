NOTES.md

Add validations to Author such that...
[x] name is not blank
[x] email is unique
[x] phone_number is exactly 10 digits long
Add validations to Post such that...
[x] title is not blank
[x] content is at least 100 characters long
[x] category is either "Fiction" or "Non-Fiction"
BASIC ROUTES & CONTROLLERS
[x] Create controllers for both models.
[x] Create show, new, edit, create, and update routes for both models.
[x] Define controller actions for show, new, and edit.
[x] Define the "valid path" for the create and update controller actions.
[x] Define the "invalid path" for the create and update controller actions.
FORMS
[x] Create forms with form_tag for both models' new and edit actions.
[x] Prefill already-submitted forms with the invalid data when re-rendering.
[x] Display a list of errors at the top of forms when an invalid action is attempted. They should be contained in an element with id error_explanation, and each error should have its own <li>.
[x] Conditionally wrap each field in a .field_with_errors div if it has errors.