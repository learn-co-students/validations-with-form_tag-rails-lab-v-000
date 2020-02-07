
class CategoryValidator < ActiveModel::Validator

  def validate(post)
    unless post.category == "Fiction" || post.category == "Non-Fiction"
      post.errors[:category] << "Category must be fiction or non-fiction!"
    end
  end

end
