require 'minitest/autorun'

require_relative 'card'

class CardTest < MiniTest::Test

  def test_card_has_a_suit_face_and_value
    card = Card.new("Clubs", "Ace")
    assert card.value == 11
    assert card.suit == "Clubs"
    assert card.face == "Ace"
  end

  def test_jack_equals_ten
    card = Card.new("Clubs", "Jack")
    assert card.value == 10
  end

  def test_queen_equals_10
    card = Card.new("Clubs", "Queen")
    assert card.value == 10
  end

  def test_king_equals_10
    card = Card.new("Clubs", "King")
    assert card.value == 10
  end

  def test_ace_equals_11
    card = Card.new("Clubs", "Ace")
    assert card.value == 11
  end

end
