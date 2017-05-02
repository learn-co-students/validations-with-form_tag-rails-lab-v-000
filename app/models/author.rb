class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, presence: true, length: { is: 10 }
  validates :email, uniqueness: true
end
