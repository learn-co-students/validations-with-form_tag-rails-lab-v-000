class Post < ActiveRecord::Base
  validates :title, presence: {message: 'must be provided.'}
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
