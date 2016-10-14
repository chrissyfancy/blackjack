class Hand
  attr_accessor :current_player

  def initialize(cards)
    @cards = cards
  end

  def show_hand(player)
    @current_player = player
    @hand = []
    @cards.each do |card|
      @hand << card.display
    end
    @hand.map { |card| puts "The #{@current_player} was dealt: #{card}" }
  end

  def hit!
    deck = Deck.new
    new_card = deck.deal(1)
    @cards << new_card[0]
  end

  def calculate_hand
    sum_of_hand, ranks, aces = 0, [], []

    @cards.map { |card| ranks << card.rank }

    ranks.each do |rank|
      if rank == "J" || rank == "Q" || rank == "K"
        sum_of_hand += 10
      elsif rank == "A"
        aces << "A"
      else
        sum_of_hand += rank.to_i
      end
    end

    aces.count.times do
      if sum_of_hand <= 10
        sum_of_hand += 11
      else
        sum_of_hand += 1
      end
    end
    sum_of_hand
  end
end
