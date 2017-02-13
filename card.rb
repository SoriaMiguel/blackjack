
class Card

  include Comparable

  def self.faces
    ("2".."10").to_a + %w(Jack Queen King Ace)
  end

  def self.suits
    %w(Clubs Diamonds Hearts Spades)
  end

  attr_accessor :suit,
                :face,
                :value

  def initialize(suit, face)
    @suit = suit
    @face = face
    @value = find_value
  end

  def find_value
    if face.to_i != 0
      face.to_i
    elsif face == "Ace"
      11
    else
      10
    end
  end

  def to_s
    # Make the language for the cards grammatically accurate
    if face == "Ace"
      "an #{face} of #{suit}"
    elsif face == "8"
      "an #{face} of #{suit}"
    else
      "a #{face} of #{suit}"
    end
  end

  def <=>(other)
      value <=> other.value
  end

  def +(other)
    value + other.value
  end
end
