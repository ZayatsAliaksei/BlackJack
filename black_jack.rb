require_relative 'logo'
require_relative 'deck'
require_relative 'player'
require_relative 'black_jack'
require_relative 'dealer'
require_relative 'card_template'
require 'colorize'

class BlackJack
  include Logo
  attr_reader :player, :dealer, :bank

  BET = 10

  def initialize(player_name)
    @player = Player.new(player_name)
    @dealer = Dealer.new
  end

  def game_start
    black_jack_logo
  end

  def new_deck
    @deck = Deck.new
  end

  def give_to_player_card
    @deck.give_away_card
  end

  def set_hand
    2.times do
      @player.take_cart(give_to_player_card)
      @dealer.take_cart(give_to_player_card)
    end
    @dealer.set_bet(BET)
    @player.set_bet(BET)
  end

  def first_deal(player)
    player.show_hand
  end

  def dealer_move
    @dealer.take_cart(give_to_player_card) if @dealer.hand.hand_sum <= 17
  end

  def open_cart
    player_carts_sum = @player.hand.hand_sum
    dealer_carts_sum = @dealer.hand.hand_sum
    puts 'Your:'.yellow
    @player.show_hand
    puts 'Dealer:'.blue
    @dealer.show_hand
    if (player_carts_sum > dealer_carts_sum && player_carts_sum < 22) || (player_carts_sum < 22 && dealer_carts_sum > 21)
      player_wins(@player)
      puts 'You WIN!'
    elsif (player_carts_sum == dealer_carts_sum) || (player_carts_sum > 21 && dealer_carts_sum > 21)
      tie
      puts 'Tie!'
    else
      player_wins(@dealer)
      puts 'Dealer WIN!'
    end
  end

  def player_wins(player)
    player.get_winning(BET * 2)
  end

  def tie
    @player.get_winning(BET)
    @dealer.get_winning(BET)
  end

end
