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

  def number_correct_by_category(category)
    correct_number_of_guesses_by_category = 0
    @turns.map do |turn|
      if turn.correct? && turn.card.category == category
        correct_number_of_guesses_by_category += 1
      end
    end
    return correct_number_of_guesses_by_category
  end

  def percent_correct
    (number_correct.to_f / @turns.length) * 100
  end

  def percent_correct_by_category(category)
    number_of_cards_per_category = @turns.select do |turn|
      turn.card.category == category
    end

    (number_correct_by_category(category).to_f / number_of_cards_per_category.length) * 100
  end

  def start
    p "Welcome! You're playing with #{@deck.count} cards."
    p "We have a selection of holiday trivia questions for you. See how many you can answer correctly."
    p "-" * 20
    play_game
    end_game
  end

  def play_game
    @deck.count.times do
      p "This is card number #{@turns.length + 1} out of #{@deck.count}"
      p "Question: #{current_card.question}"
      p "Enter your answer:"
      answer = gets.chomp.upcase
      take_turn(answer)
      p @turns.last.feedback
    end
  end

end
