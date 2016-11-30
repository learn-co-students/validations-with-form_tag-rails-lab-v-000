class Post < ActiveRecord::Base

  validates :content, length: { minimum: 100 }
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category" }

end
