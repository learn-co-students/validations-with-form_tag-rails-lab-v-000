class Author < ActiveRecord::Base
  validates :name, presence: { message: "Must have name" }
  validates :email, uniqueness: { message: "Must be unique" }
  validates :phone_number, length: { is: 10 , message: "must be vaild phone number"}
end
