# Post model. Must have a title. Content must be at least 100 characters.
# Category must be Fiction or Non-Fiction.
class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
end
