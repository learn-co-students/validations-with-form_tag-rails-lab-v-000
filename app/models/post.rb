class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "is not included in the list"}
  validates :content, length: { minimum: 100 }
end
