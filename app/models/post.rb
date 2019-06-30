class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  # example of validates, inclusion
  # validates :size, inclusion: { in: %w(small medium large), message: "%{value} is not a valid size" }
end