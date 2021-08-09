class Hand
  attr_reader :cards_in_hand

  def initialize
    @cards_in_hand = []
  end

  def hand_sum
    sum = []
    @cards_in_hand.each do |arr|
      sum << if arr[0] == 'A'
               11
             elsif arr[0].is_a?(String)
               10
             else
               arr[0]
             end
    end
    sum.sum > 21 && sum.include?(11) ? sum.sum - 10 : sum.sum
  end

  def clear_hand
    @cards_in_hand.clear
  end

end
