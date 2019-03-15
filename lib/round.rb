require 'pry'

class Round
  attr_reader :deck,
              :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
    @deck.cards.shift
    return new_turn
  end

  def number_correct
    correct_number_of_guesses = 0
    @turns.map do |turn|
      if turn.correct?
        correct_number_of_guesses += 1
      end
    end
    return correct_number_of_guesses
  end

end
