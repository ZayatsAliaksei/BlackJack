class Interface
  attr_reader :player, :dealer, :bank

  RATE = 10

  def initialize
    @round ||= 1
  end

  def game_start
    puts 'Set player name'
    @player = Player.new(gets.chomp.to_s)
    @dealer = Dealer.new
    game
  end

  def game
    new_deck
    set_hand
    culmination
  end

  def new_deck
    @deck = Deck.new
  end

  def take_cart
    @deck.give_away_card
  end

  def set_hand
    2.times do
      @player.hand << take_cart
      @dealer.hand << take_cart
    end
  end

  def culmination
    binding.irb
    show_hand(@player)
  end

  def show_hand(player)
    player.hand.each{|arr| print " #{arr[0]}" }
    @sum = player.hand_sum
    puts "\n#{@sum}".red
  end
end