require_relative 'hand'

class Player
  attr_reader :bank, :name, :hand

  def initialize(name = nil)
    @name = name
    @bank = 100
    @hand = Hand.new
  end

  attr_writer :bank

  def set_bet(sum)
    self.bank > 0 ? self.bank -= sum : "no more money"
  end

  def get_money(sum, type = nil)
    case type
    when 'win'
      puts 'You WIN !'
    when 'tie'
      puts 'Tie!'
    end
    self.bank += sum
  end

  def take_cart(cart)
    @hand.cards_in_hand << cart
  end

  def show_hand

    size = @hand.cards_in_hand.size
    ranks = @hand.cards_in_hand.map(&:first)
    suites = @hand.cards_in_hand.map(&:last)

    puts "┌──────────┐ " * size
    puts " %s           " * size % ranks
    puts "│          │ " * size
    puts "│          │ " * size
    puts "     %s       " * size % suites
    puts "│          │ " * size
    puts "│          │ " * size
    puts "         %s   " * size % ranks
    puts "└──────────┘ " * size
    puts "\n SCORE - #{@hand.hand_sum}".red
  end

end
