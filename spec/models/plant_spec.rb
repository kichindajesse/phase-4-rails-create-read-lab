require 'rails_helper'

RSpec.describe Plant, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      plant = Plant.new(name: nil)
      expect(plant).to be_invalid
    end
    
    it "is valid with a name" do
      plant = Plant.new(name: "fern")
      expect(plant).to be_valid
    end
  end
end
