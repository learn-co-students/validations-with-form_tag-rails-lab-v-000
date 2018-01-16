class Author < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :email
  validates_length_of :phone_number, is: 10
end
