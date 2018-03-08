class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  #validates_format_of :email, { :with => /@/, message: "enter valid email" }
  validates :phone_number, length:{ is: 10 }
end
