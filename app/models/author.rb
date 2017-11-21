class Author < ActiveRecord::Base
  validates :name, presence: {message: "cannot be blank"}
  validates :email, uniqueness: {message: "must be unique"}
  validates :phone_number, length: { is: 10, message: "must be 10 digits"}

end
