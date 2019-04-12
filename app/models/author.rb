class Author < ActiveRecord::Base
   validates :name, presence: true, allow_blank: false
   validates :email, presence: true, uniqueness: true
   validates :phone_number, presence: true, length: { is: 10 }
end
