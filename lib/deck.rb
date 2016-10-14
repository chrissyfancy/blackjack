class Deck
  attr_accessor :cards
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  def initialize
    @cards = build_deck
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << PlayingCard.new("#{rank}", suit)
      end
    end
    cards.shuffle!
  end

  def deal(amount)
    cards.pop(amount)
  end
end
