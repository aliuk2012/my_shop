require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "vaidations" do
    before do
      subject.valid?
    end

    it "requires name to be present" do
      expect(subject.valid?).to eq(false)
      expect(subject.errors[:name]).to include("can't be blank")
    end

    it "requires name to be 100 characters or less" do
      subject.name = "-" * 101
      expect(subject.valid?).to eq(false)
      expect(subject.errors[:name]).to include("is too long (maximum is 100 characters)")
    end
  end
end
