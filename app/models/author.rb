class Author < ActiveRecord::Base
  has_many :posts

  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, length: {minimum: 10}
end
