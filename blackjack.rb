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
    @players = [@p1_hand, @house_hand]
    @player_input = nil
    @house_total = 0
    @player_total = 0
  end

  def deal(players)
    2.times do
      players.each do players.draw
      end
    end
  end

  def play
    until game_over


      # deal house - 1st face down, second face up, player both face up

      # puts "House is showing #{house_hand}. You have #{p1_hand}. Would you like to hit or stay?"
      # player "hit" or "stay"
      # house hits if less than 16
    end
  end

  def player_hand
    puts "You have"
    p1_hand.each do |card|
      puts card
    end
  end

  def dealer_hand
    # show the first card, not the second card
    puts "House is showing #{house_hand.last}."



  end

  def sum
    array.inject(0){|sum,x| sum + x }
    # needs to work for both the player hand and deealer hand.  How?  @players?d
  end

  def game_over
    # need the sum of each hand in order to compare them, not the array themselves
    if player_hand == 21
      puts "Blackjack!"
    elsif
      house_hand > 21
      puts "House busts. You win!"
    elsif
      p1_hand > 21
      puts "You bust. Sorry."
    elsif
      house_hand > p1_hand
      puts "House wins.  Too bad."
    elsif
      p1_hand > house_hand
      puts "You win!"
    else
      p1_hand == house_hand
      puts "It's a tie! You win!"
    end
    next_game




    # player = 21 and house = 21
    # player is 20 or less and greater than house
    # house is 20 or less and greater than player

    # Dealer had #{dealer_hand}
    # include a new deck once game is over
  end


end
