class Author < ActiveRecord::Base
    validates :name, presence: {message: "Posts require a name"}
    validates :email, uniqueness: {message: "Email already in use"}
    validates :phone_number, length: {is: 10, message: "Phone number must be 10 digits"}
end
