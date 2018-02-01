class Post < ActiveRecord::Base
  #title cannot be blank
   validates :title, presence: true
  #content must be at least 100 char
  validates :content, length: {minimum: 100}
  #cat must be fiction or non-fiction
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)} 
end
