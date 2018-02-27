class Author < ActiveRecord::Base
  validates :name, allow_blank: false, presence: true
  validates :email, uniqueness: true
  validates :phone_number, length: { is: 10 }

end
