class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100,
     message: "100 characters is the minimum allowed" }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

end
