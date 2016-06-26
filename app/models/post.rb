class Post < ActiveRecord::Base
  validates :title,  presence: true#, message: "Come on, fill in No Title at least." }
  validates :content,  length: { minimum: 100 }#, message: "Too short!" }
  validates :category,  inclusion: { in: %w(Fiction Non-Fiction) }#, message: "Fiction or Non-Fiction only!" }
end
