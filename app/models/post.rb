class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  # validates :category, presence: true, if: :valid_category?

  # def valid_category?
  #   self.category == "Fiction" || self.category == "Non-Fiction"
  # end

end
