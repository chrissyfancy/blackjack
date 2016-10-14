class PlayingCard
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def display
    "#{@rank}#{@suit}"
  end
end
