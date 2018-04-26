class Post < ActiveRecord::Base
  validates :title, presence: { message: "Must have title" }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "Must be Fiction or Non-Fiction"}
  validates :content, length: { minimum: 100, message: "Must be at least 100 characters" }
end
