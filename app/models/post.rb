class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 } #at least 100 characters long
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
end
