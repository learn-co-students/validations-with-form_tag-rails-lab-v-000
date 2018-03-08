class Post < ActiveRecord::Base
    validates :title, presence: {message: "Posts must have a title"}
    validates :content, length: {minimum: 100, message: "Must be at least 100 characters long"}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"], message: "Category must be Fiction or Non-Fiction"}
end
