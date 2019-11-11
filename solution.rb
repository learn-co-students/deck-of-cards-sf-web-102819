class Deck
    attr_accessor :cards
    
    def initialize
        @ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
        @suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []
        @ranks.each do |rank|
            @suits.each do |suit|
                @cards << Card.new(rank, suit)
            end
        end
    end

    def choose_card
        @cards.shift
    end
        
end

class Card
    attr_accessor :suit, :rank
    
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end
