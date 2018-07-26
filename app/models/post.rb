class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: ["Fiction", "Non-Fiction"]
  validates :category, exclusion: [nil]
end
