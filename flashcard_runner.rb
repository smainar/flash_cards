require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/turn'

card_1 = Card.new("What is the name of the Celtic harvest festival that many people believe Halloween is based on?", "SAMHAIN", :Halloween)
card_2 = Card.new("In what year will the next full moon occur during Halloween?", "2020", :Halloween)
card_3 = Card.new("What item is banned only during Halloween from 12am October 31st to 12pm November 1st in Hollywood California?", "SILLY STRING", :Halloween)
card_4 = Card.new("In what country was the first written account of children using the phrase “trick or treat” on Halloween?", "CANADA", :Halloween)
card_5 = Card.new("What were the original jack-o’-lanterns made from?", "TURNIPS", :Halloween)
card_6 = Card.new("What year was the celebration that is most commonly considered to be the first Thanksgiving?", "1621", :Thanksgiving)
card_7 = Card.new("Under which president did Thanksgiving become an annual holiday?", "ABRAHAM LINCOLN", :Thanksgiving)
card_8 = Card.new("What state raises the most turkeys?", "MINNESOTA", :Thanksgiving)
card_9 = Card.new("How long did the first Thanksgiving celebration last?", "3 DAYS", :Thanksgiving)
card_10 = Card.new("What is the wobbly red piece of flesh on top of the beak of a turkey?", "SNOOD", :Thanksgiving)
card_11 = Card.new("The French word “Noel” is often used around Christmas, but what was its original meaning in Latin?", "BIRTH", :Christmas)
card_12 = Card.new("What Roman holiday held from December 17th to the 23rd had a large influence on how Christmas was celebrated?", "SATURNALIA", :Christmas)
card_13 = Card.new("What political cartoonist is largely responsible for defining what the modern Santa Claus looks like?", "THOMAS NAST", :Christmas)
card_14 = Card.new("Who did the German Nazi Regime replace Santa Claus / St. Nick with?", "ODIN", :Christmas)
card_15 = Card.new("In what country did Silent Night originate?", "AUSTRIA", :Christmas)

cards = [card_1, card_2, card_3, card_4, card_5, card_6, card_7, card_8, card_9, card_10, card_11, card_12, card_13, card_14, card_15]
deck = Deck.new(cards)
round = Round.new(deck)

round.start
