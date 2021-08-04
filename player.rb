require_relative 'deck'

class Player
  attr_reader :bank, :hand, :name, :score

  def initialize(name = nil)
    @name = name
    @bank = 100
    @hand = []
  end

  def hand_sum
    sum = []
    @hand.each { |arr| arr.size < 3 ? sum << arr[1] : sum << arr[2] }
    if sum.sum > 21
      sum = []
      @hand.each { |arr| sum << arr[1] }
    end
    sum.sum
  end

  def show_hand
    self.hand.each { |arr| print " #{arr[0]}" }
    puts "\n SCORE - #{hand_sum}".red
  end

  attr_writer :bank

  def set_bet(sum)
    self.bank > 0 ? self.bank -= sum : "no more money"
  end

  def get_winning(sum)
    self.bank += sum
  end

  def clear_hand
    @hand.clear
  end

end
