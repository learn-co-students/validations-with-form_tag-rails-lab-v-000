class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: {message: "Email already exists"}
  validates :phone_number, length: {is: 10}
end
