class Post < ActiveRecord::Base
  
  validates :title, presence: true 
  validates :category, inclusion: {in: ["Ficiton", "Non-Fiction"]} 
  validates :content, length: {minimum: 10}
  
end
