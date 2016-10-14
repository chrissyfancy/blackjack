require_relative "deck"
require_relative "hand"
require_relative "card"

deck = Deck.new

player_hand = deck.deal(2)
player = Hand.new(player_hand)

computer_hand = deck.deal(2)
computer = Hand.new(computer_hand)

puts "Welcome to Blackjack! \n\n"

player.show_hand("player")
puts "Player score: #{player.calculate_hand}\n\n"

if player.calculate_hand.to_i == 21
  puts "Blackjack! You win!"
else
  while player.calculate_hand.to_i < 21
    puts "Hit or stand (H/S):"
    input = STDIN.gets.chomp.downcase
    puts
    until input != "h" || input != "s"
      puts "Invalid response. (H/S):"
      input = STDIN.gets.chomp.downcase
      puts
    end
    if input == "h"
      player.hit!
      player.show_hand("player")
      puts "Player score: #{player.calculate_hand}\n\n"
    elsif
      input == "s"
      break
    end
  end

  if player.calculate_hand.to_i >= 22
    puts "Bust! You lose."
  else
    while computer.calculate_hand.to_i <= 17
      computer.hit!
    end
    computer.show_hand("computer")
    puts "Computer Score: #{computer.calculate_hand}\n\n"

    if computer.calculate_hand.to_i >= player.calculate_hand.to_i && computer.calculate_hand.to_i <= 21
      puts "You lose!"
    elsif computer.calculate_hand.to_i == player.calculate_hand.to_i
      puts "Push!"
    else
      puts "You win!"
    end
  end
end
