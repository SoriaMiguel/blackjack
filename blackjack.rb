require 'tty'

require_relative 'deck'
require_relative 'card'

class Game

  attr_accessor :house_hand,
                :p1_hand,
                :hand,
                :prompt,
                :players,
                :deck,
                :player_input,
                :house_total,
                :player_total


  def initialize
    @prompt = TTY::Prompt.new
    @deck = Deck.new
    @p1_hand = []
    @house_hand = []
    # @players = [@p1_hand, @house_hand]
    # @player_input = nil
    # @house_total = 0
    # @player_total = 0
  end

  def deal
    2.times do
      p1_hand << deck.draw
      house_hand << deck.draw
    end
  end

  def play
    deal
    player_hand
    sum(p1_hand)
    puts "Your total hand is #{sum(p1_hand)}"
    player_turn
    dealer_hand
    dealer_turn
    game_over
  end

  def player_turn
    stay = false
    until stay || bust(p1_hand) || sum(p1_hand) == 21
      choice = prompt.select("What's your move?", %W(Hit Stay))
        case choice
        when "Hit"
          p1_hand << deck.draw
          player_hand
          puts "Your total hand is #{sum(p1_hand)}"
        when "Stay"
          stay = true
          puts "You're choosing to stay."
        end
    end
  end

  def dealer_turn
    until sum(house_hand) >= 16 || bust(p1_hand)
      if sum(house_hand) < 16
        house_hand << deck.draw
        puts house_hand.last
      else
        puts dealer_hand
      end
    end
  end

  def bust(players)
    sum(players) > 21
  end

  def player_hand
    puts "You have:"
    p1_hand.each do |card|
      puts card.to_s
    end
    puts "Dealer is showing #{house_hand.last}"
    puts "========"
  end

  def dealer_hand
    puts "========"
    puts "Dealer has: "
    house_hand.each do |card|
      puts card
    end
  end

  def sum(players)
    players.inject(0){|sum, card| sum + card.value}
  end

  def game_over
    if sum(p1_hand) == 21
      puts "You won with a Blackjack!"
      play_again?
    elsif
      bust(house_hand)
      puts "House busts with #{sum(house_hand)}. You win!"
      play_again?
    elsif
      bust(p1_hand)
      puts "You busted with #{sum(p1_hand)}. Sorry."
      play_again?
    elsif
      sum(house_hand) > sum(p1_hand) && !bust(house_hand)
      puts "House wins with a hand total of #{sum(house_hand)}. Too bad."
      play_again?
    elsif
      sum(p1_hand) > sum(house_hand) && !bust(p1_hand)
      puts "You win with a hand total of #{sum(p1_hand)}!"
      play_again?
    else
      sum(p1_hand) == sum(house_hand)
      puts "It's a tie! You win!"
      play_again?
    end
  end

  def play_again?
    prompt = @prompt.yes?("Would you like to play again?")
      if prompt
        Game.new.play
      else
        puts "Thank you for playing! Please come back soon!"
      end
  end


end

Game.new.play
