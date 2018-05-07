class Post < ActiveRecord::Base
  validates :category, inclusion: { in: %w(Fiction  Non-Fiction)} 
  validates :title, presence: true 
  validates :content, length: { minimum: 100 }
end
