require './lib/card'

class CardGenerator
  def initialize(file_name)
    @file_name = file_name
  end

  def read_cards
    cards_array = IO.readlines(@file_name)
    cards_array.map! do |card|
      separated_cards = card.chomp.split(",")
      Card.new(separated_cards[0], separated_cards[1], separated_cards[2])
    end
    return cards_array
  end

end
