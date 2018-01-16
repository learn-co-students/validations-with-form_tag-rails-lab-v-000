class Post < ActiveRecord::Base
  validates :content, length: {minimum: 100}
  validates :title, presence: true
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
end
