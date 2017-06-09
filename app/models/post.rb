class Post < ActiveRecord::Base
  validates_presence_of :title
  validates :content, length: { minimum: 10 }
  validates :category, inclusion:  %w(Fiction Non-Fiction)
end
