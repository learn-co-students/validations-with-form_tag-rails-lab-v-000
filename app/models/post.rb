class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_length_of :content, { minimum: 100 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
end
