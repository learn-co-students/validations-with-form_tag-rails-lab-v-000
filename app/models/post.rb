class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :category, presence: true
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
