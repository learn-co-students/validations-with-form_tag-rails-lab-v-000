class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :content, length: {minimum: 100}
  validated :category, inclusion: { in: %w(Fiction Non-Fiction)}
end
