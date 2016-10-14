require "spec_helper"

deck = Deck.new
deck = deck.deal(2)

RSpec.describe Hand do
  let(:hand) {Hand.new(deck)}
  describe "#initialize" do
    it "will take in card objects" do
      expect(hand).to_not be_empty
    end

  describe "#show_hand" do
    it "will display the cards in the hand as an array" do
      expect(hand.show_hand).to_be (Array)
      end
    end
  end
end
