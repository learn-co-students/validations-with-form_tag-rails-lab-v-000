class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  # validate :has_valid_email
  validates :phone_number, length: { is: 10 }

  # def has_valid_email
  #   unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  #     errors.add(:email, "is not an email")
  #   end
  # end

end
