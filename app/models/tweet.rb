class Tweet < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 10, maximum: 120 }
  validates :category, inclusion: { in: %w(Opinion Fact) }
  validate :contains_worthwhile_content?
  validate :contains_cursing?

  WORTHWHILE_CONTENT = [
    /I think/i,
    /the fact is/i
  ]

  CURSE_WORDS = [
    /shit/i,
    /fuck/i
  ]

  def contains_worthwhile_content?
    if WORTHWHILE_CONTENT.none? { |blah| blah.match content }
      errors.add(:content, "This content is lame man")
    end
  end

  def contains_cursing?
    if CURSE_WORDS.any? { |bleep| bleep.match content }
      errors.add(:content, "You can't use swear words!")
    end
  end
end
