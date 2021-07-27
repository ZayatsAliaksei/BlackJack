require_relative 'player'

class Dealer < Player

  NAME = 'Dealer'.freeze

  def initialize
    super(NAME)
  end

  def turn?
    score < 17
  end
end
