class Author < ActiveRecord::Base
    validates :phone_number, length: { is: 10 }
    validates :email, uniqueness: true
    validates :name, presence: true
end
