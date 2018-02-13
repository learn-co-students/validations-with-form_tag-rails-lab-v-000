class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 10}
  #the category attribute is only allowd to be passed "Fiction" and  "Non-Fiction"
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)} #case sensitive could be applied
end
