class Author < ActiveRecord::Base
	
	validates :name, presence: true
	validates_uniqueness_of :email
	# validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
	validates_length_of :phone_number, minimum: 10, maximum: 10

end
