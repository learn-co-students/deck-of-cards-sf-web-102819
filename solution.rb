require "pry"
class Deck

    attr_accessor :cards

    def initialize
        @cards = []
        suits = ["Hearts", "Clubs", "Diamond", "Spades"]
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits.each do |suit|
            ranks.each do |rank|
                cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        #chooses a random card and removes it from the deck
        @cards.delete_at(rand(@cards.length))
    end

end

class Card
    attr_accessor :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end
binding.pry

0
