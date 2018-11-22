class Post < ActiveRecord::Base
  category_name = ["Fiction", "Non-Fiction"]
  validates :title, presence: true
  validates :content, length: {minimum: 100}
  validates :category, inclusion: category_name
end
