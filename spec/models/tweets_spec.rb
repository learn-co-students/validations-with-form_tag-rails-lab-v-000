require 'rails_helper'

RSpec.describe Tweet, type: :model do
  let(:content) { "Non Accubabit Donec Devoret Praedam I think." }

  let(:valid_attrs) do
    {
      title: "This is my first Tweet",
      content: content,
      category: "Fact"
    }
  end

  let(:valid_tweet) { Tweet.new(valid_attrs) }
  let(:missing_title) { Tweet.new(valid_attrs.except(:title)) }
  let(:short_content) { Tweet.new(valid_attrs.merge(content: "too short")) }
  let(:long_content) { Tweet.new(valid_attrs.merge(content: "way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long way too long")) }
  let(:invalid_cat) { Tweet.new(valid_attrs.merge(category: "Bowling Ball")) }
  let(:invalid_content) { Tweet.new(valid_attrs.merge(content: "Non Accubabit Donec Devoret Praedam")) }
  let(:cursing_content) { Tweet.new(valid_attrs.merge(content: "I think this whole thing is really fucking stupid!!!")) }

  it "is valid" do
    expect(valid_tweet).to be_valid
  end

  it "is invalid without a title" do
    expect(missing_title).to be_invalid
  end

  it "is invalid with too short content" do
    expect(short_content).to be_invalid
  end

  it "is invalid with too long content" do
    expect(long_content).to be_invalid
  end

  it "is invalid with a category outside the choices" do
    expect(invalid_cat).to be_invalid
  end

  it "is doesn't contain necessary verbage in the content" do
    expect(invalid_content).to be_invalid
  end

  it "contains a curse word that is forbidden" do
    expect(cursing_content).to be_invalid
  end
end
