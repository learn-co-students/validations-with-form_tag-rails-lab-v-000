class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, format: { with: /\A[0-9]{10}\z/,
    message: "only allows 10 digits" }
end
