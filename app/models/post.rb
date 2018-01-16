class Post < ActiveRecord::Base
  validates :post, presence: true
  validates :content, length: {minimum: 100}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
end
