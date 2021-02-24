class Post < ActiveRecord::Base
    validates :title, presence: true, allow_blank: false
    validates :content, length: {minimum: 100}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
end
