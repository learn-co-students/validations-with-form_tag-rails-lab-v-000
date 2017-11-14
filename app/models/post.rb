class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  CATEGORY_OPTIONS = %w[Fiction Non-Fiction]
  validates :category, inclusion: { in: CATEGORY_OPTIONS}
end
