class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100, message: "must be at least 100 characters"}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "must be either Fiction or Non-Fiction"}
end
