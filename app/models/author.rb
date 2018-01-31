class Author < ActiveRecord::Base
  #must have name
validates :name, presence: true
#must have unique email
validates :email, uniqueness: true
#must have 10 digits
validates :phone_number, length: {is: 10}
end
