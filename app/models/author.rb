class Author < ActiveRecord::Base
  validates :name, presence: true
  validates_uniqueness_of :email, presence: true
  validates :phone_number, length: {minimum: 10}
end
