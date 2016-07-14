class Author < ActiveRecord::Base
  validates :name, presence: true
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,uniqueness: true #length: { maximum: 255 },
#format: { with: VALID_EMAIL_REGEX },
  validates :phone_number, length: { is: 10 }
end
