class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, format: {with: /[0-9]/}, length: {is: 10}
end
