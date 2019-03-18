require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'
require './lib/card_generator'

card_generator = CardGenerator.new("cards.txt")
cards = card_generator.read_cards

deck = Deck.new(cards)
round = Round.new(deck)

round.start
