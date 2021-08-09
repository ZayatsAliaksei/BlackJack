class Deck

  attr_accessor :deck
  RANKS = Array(2..10) + ["J", "Q", "K", "A"]
  SUITS = ["\u{2660}", "\u{2663}", "\u{2666}", "\u{2665}"]

  def initialize
    @deck = make_deck
  end

  def make_deck
    deck = []
    RANKS.each do |rank|
      SUITS.each do |suit|
        deck << [rank, suit]
      end
    end
    deck.shuffle!
  end

  def give_away_card
    card = @deck.sample
    @deck.delete(card)
    card
  end

  def ace?(arr)
    arr[0] == 'A'
  end

end
