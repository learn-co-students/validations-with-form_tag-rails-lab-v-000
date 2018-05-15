class Author < ActiveRecord::Base
    validates :name, presence: { message: "must have a name" }
    validates :phone_number, length: { minimum: 10 }
    validates :email, uniqueness: true
end
