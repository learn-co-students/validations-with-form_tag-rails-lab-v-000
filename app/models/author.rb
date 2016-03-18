class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates_numericality_of :phone_number
  validates :phone_number, length: { is: 10 }
end
