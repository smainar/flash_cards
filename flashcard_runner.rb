require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'

card_1 = Card.new("What is a hallow?", "A saint or a holy person", :Halloween)
card_2 = Card.new("In what year will the next full moon occur during Halloween?", "2020", :Halloween)
card_3 = Card.new("What popular fall festival activity did the Romans bring to Britain when they invaded?", "Bobbing for apples", :Halloween)
card_4 = Card.new("What is the name of the Celtic harvest festival that many people believe Halloween is based on?", "Samhain (Pronounced SAH-win or SOW-in)", :Halloween)
card_5 = Card.new("What were the original jack-o’-lanterns made from?", "Turnips (also mangel wurzels and possibly rutabagas)", :Halloween)
card_6 = Card.new("Under which president did Thanksgiving become an annual holiday?", "Abraham Lincoln", :Thanksgiving)
card_7 = Card.new("How long did the first Thanksgiving celebration last?", "3 days", :Thanksgiving)
card_8 = Card.new("How do both Macy’s Thanksgiving Day Parade and America’s Thanksgiving Parade conclude?", "With the arrival of Santa Claus", :Thanksgiving)
card_9 = Card.new("What meat did the Native Americans bring to the first Thanksgiving?", "Deer (venison)", :Thanksgiving)
card_10 = Card.new("What year was the celebration that is most commonly considered to be the first Thanksgiving?", "1621", :Thanksgiving)
card_11 = Card.new("Before becoming tied up with Christmas what was Yule?", "A pagan midwinter festival", :Christmas)
card_12 = Card.new("What political cartoonist is largely responsible for defining what the modern Santa Claus looks like?", "Thomas Nast", :Christmas)
card_13 = Card.new("What was the first year that the Rockefeller Center Christmas Tree was put up?", "1933", :Christmas)
card_14 = Card.new("What Roman holiday held from December 17th to the 23rd had a large influence on how Christmas was celebrated?", "Saturnalia", :Christmas)
card_15 = Card.new("What popular holiday song was written during the Cuban missile crisis and was a plea for peace?", "Do You Hear What I Hear?", :Christmas)

cards = [card_1, card_2, card_3, card_4, card_5, card_6, card_7, card_8, card_9, card_10, card_11, card_12, card_13, card_14, card_15]
deck = Deck.new(cards)
round = Round.new(deck)
