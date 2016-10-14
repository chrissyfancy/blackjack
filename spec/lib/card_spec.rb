require "spec_helper"

RSpec.describe PlayingCard do
  let(:card) {PlayingCard.new("7", "♥")}
  describe "#initialize" do
    it "will have a suit" do
      expect(card.suit).to eq("♥")
    end

    it "will have a rank" do
      expect(card.rank).to eq("7")
    end
  end

  describe "#display" do
    it "will display the rank and suit in a string" do
      expect(card.display).to eq("7♥")
    end
  end
end
