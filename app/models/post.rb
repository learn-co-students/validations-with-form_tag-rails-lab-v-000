class Post < ActiveRecord::Base
  validates_presence_of :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category" }
  validates :content, length: { minimum: 100 }, presence: { message: "must be at least 100 characters long" }
end
