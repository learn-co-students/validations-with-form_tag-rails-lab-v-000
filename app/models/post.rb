class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100}, presence: true
  validates :category, inclusion: {in: %w(Non-Fiction Fiction)}, presence: true
end
