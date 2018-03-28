require 'rails_helper'

RSpec.describe Sparrow, type: :model do
  it "is a valid model for sure" do
    bird = Sparrow.new(name: "Shafnina", email: "shafy@gmail.co.uk", phone_number: 8188576309)
    expect(bird).to be_valid
  end

  it "is invalid with no name" do
    birdy = Sparrow.new(email: "shafy@gmail.co.uk", phone_number: 8188576309)
    expect(birdy).to be_invalid
  end

  it "is invalid with no email address" do
    birdy = Sparrow.new(name: "Shafnina", phone_number: 8188576309)
    expect(birdy).to be_invalid
  end

  it "is invalid when name is not unique" do
    Sparrow.create(name: "Shafnina", email: "shafy@gmail.co.uk", phone_number: 1111111111)
    tweety = Sparrow.new(name: "Shafnina", email: "tzafi@gmail.co.uk", phone_number: 0000000000)
    expect(tweety).to be_invalid
  end

  it "is invalid when email is not unique" do
    Sparrow.create(name: "Tzafrah", email: "shafy@gmail.co.uk", phone_number: 1111111111)
    tweety = Sparrow.new(name: "Shafnina", email: "shafy@gmail.co.uk", phone_number: 0000000000)
    expect(tweety).to be_invalid
  end
end
