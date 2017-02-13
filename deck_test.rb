require 'minitest/autorun'
require_relative 'deck'

class DeckTest < MiniTest::Test

  def test_num_cards_in_deck
    deck = Deck.new
    assert deck.cards.length == 52
  end

  def test_shuffled_when_created
    deck1 = Deck.new
    deck2 = Deck.new
    refute deck1.cards == deck2.cards
  end

  def test_deck_has_13_cards_of_each_suit
    deck = Deck.new
    suits = %w(Spades Clubs Hearts Diamonds)
    suits.each do |suit|
      assert deck.cards.count{ |card| card.suit.include?(suit)  } == 13
    end
  end

  def test_four_each_face_card
    deck = Deck.new
    faces = ("2".."10").to_a + %w(Jack Queen King Ace)
    faces.each do |face|
      assert deck.cards.count{ |card| card.face == face } == 4
    end
  end

end
