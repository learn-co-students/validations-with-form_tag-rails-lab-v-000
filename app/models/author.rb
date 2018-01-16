class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :phone_number, length: { is: 10 }, presence: true
end
