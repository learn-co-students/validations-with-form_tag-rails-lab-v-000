class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"], message: "%{value} is not valid" }
end
