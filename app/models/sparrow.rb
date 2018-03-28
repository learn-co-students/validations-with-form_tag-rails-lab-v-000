class Sparrow < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
  validates :phone_number, length: { is: 10 }
end
