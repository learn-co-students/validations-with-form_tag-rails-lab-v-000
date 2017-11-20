class Post < ActiveRecord::Base
  validates :title, presence: {message: "cannot be blank"}
  validates :content, length: {minimum: 100, message: "must be longer than 100 characters"}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "Enter either Fiction or Non-Fiction"}
end
