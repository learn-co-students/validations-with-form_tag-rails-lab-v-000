class Author < ActiveRecord::Base
  validates :name, presence: true
    # message: "Name cannot be blank"

  validates :email, uniqueness: true
    # message: "Email already used"

  validates :phone_number, length: {is: 10}
    # message: "Phone number must be 10 numbers"
end
