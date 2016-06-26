class Author < ActiveRecord::Base
  validates :name, presence: true#, message: "A girl has no name? I don't think so" }
  validates :email, uniqueness: true#, message: "Fill in the email so we can send all the spams your way!" }
  validates :phone_number, length: { is: 10 }#, message: "Nuh uh, that's not a phone number! You can fool me no more." }
end
