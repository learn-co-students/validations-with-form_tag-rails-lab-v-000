# Author model. Must have a name. The phone number must be 10 digits. The email
# must be unique.
class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, length: { is: 10 }
  validates :email, uniqueness: true
end
