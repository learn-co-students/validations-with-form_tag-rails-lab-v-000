class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, length: { is: 10 }
end


# validates :name, presence: true, message: "must be filled out."
# validates :email, uniqueness: true, message: "must be unique."
# validates :phone_number, length: { is: 10 message: "must be 10 digits." }
