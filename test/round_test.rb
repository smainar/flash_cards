require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'
require 'pry'

class RoundTest < Minitest::Test
  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @round = Round.new(@deck)
  end

  def test_it_exists
    assert_instance_of Round, @round
  end

  def test_it_has_a_deck
    assert_equal @deck, @round.deck
  end

  def test_it_begins_with_no_turns
    assert_equal [], @round.turns
  end

  def test_the_round_begins_with_a_current_card_which_is_first_in_the_deck
    assert_equal @card_1, @round.current_card
  end

  def test_it_can_take_a_turn
    new_turn = @round.take_turn("Juneau")
    assert_instance_of Turn, new_turn
  end

  def test_the_class_of_new_turn
    new_turn = @round.take_turn("Juneau")
    assert_equal Turn, new_turn.class
  end

  def test_if_the_turn_is_correct
    new_turn = @round.take_turn("Juneau")
    assert_equal true, new_turn.correct?
  end

  def test_if_the_turn_is_wrong
    new_turn = @round.take_turn("Anchorage")
    assert_equal false, new_turn.correct?
  end

  def test_it_can_store_the_turn
    new_turn = @round.take_turn("Juneau")
    assert_equal 1, @round.turns.count

    new_turn = @round.take_turn("Venus")
    assert_equal 2, @round.turns.count
  end

  def test_it_returns_the_correct_number_of_guesses
    new_turn = @round.take_turn("Juneau")

    assert_equal 1, @round.number_correct
  end

  def test_it_moves_to_a_new_card_after_turn_is_complete
    @round.take_turn("Juneau")
    @round.take_turn("Venus")

    assert_equal @card_3, @round.current_card
  end

  def test_it_counts_the_number_of_turns
    @round.take_turn("Juneau")
    @round.take_turn("Venus")

    assert_equal 2, @round.turns.count
  end

  def test_it_can_return_feedback_when_the_guess_is_incorrect
    @round.take_turn("Venus")

    assert_equal "Incorrect.", @round.turns.last.feedback
  end

  def test_it_returns_the_number_correct
    @round.take_turn("Juneau")
    @round.take_turn("Venus")

    assert_equal 1, @round.number_correct
  end

  def test_it_returns_the_number_correct_by_category
    @round.take_turn("Juneau")
    @round.take_turn("Venus")

    assert_equal 1, @round.number_correct_by_category(:Geography)

    assert_equal 0, @round.number_correct_by_category(:STEM)
  end

  def test_it_returns_the_percent_correct
    @round.take_turn("Juneau")
    @round.take_turn("Venus")

    assert_equal 50.0, @round.percent_correct
  end

  def test_it_returns_the_percent_correct_by_category
    @round.take_turn("Juneau")
    @round.take_turn("Venus")

    assert_equal 100.0, @round.percent_correct_by_category(:Geography)
  end

end
