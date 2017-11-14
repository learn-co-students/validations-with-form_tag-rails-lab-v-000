class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates_format_of :phone_number, :with => /\d{3}\d{3}\d{4}/
end
