class Author < ActiveRecord::Base
  validates_presence_of :name, presence: true
  validates :email, uniqueness: true 
  validates :phone_number, length: { is: 10 }, presence: { message: "must be 10 digits" }, uniqueness: true
end
