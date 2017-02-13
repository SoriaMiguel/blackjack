require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    Card.suits.each do |suit|
      Card.faces.each do |face|
        card = Card.new(suit, face)
        cards << card
      end
      cards.shuffle!
    end

    def draw
      @cards.shift
    end

    def dry?
      @cards.empty?
    end

  end



end
