class Post < ActiveRecord::Base
  validates_presence_of :title
  validates :content, length: {minimum: 100}
  validates_inclusion_of :category, :in => %w(Fiction Non-Fiction)

end
