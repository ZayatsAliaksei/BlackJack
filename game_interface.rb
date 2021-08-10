require_relative 'black_jack'

class GameInterface
  def initialize
    puts "Введите имя игрока"
    @game = BlackJack.new(gets.chomp.to_s)
    start
  end

  def start
    @game.game_start
    turn_first
  end

  def turn_first
    @game.new_deck
    @game.set_hand
    @game.player.show_hand
    puts "Choose action: Skip | Add | Show".green
    choose = gets.chomp.to_s
    case choose
    when 'Add'
      @game.player.hand.cards_in_hand << @game.give_to_player_card
      @game.dealer_move
      turn_second
    when 'Skip'
      @game.dealer_move
      turn_second
    when 'Show'
      @game.open_cart
      next_game
    else
      puts "Plz check yor input"
      turn_first
    end
  end

  def turn_second
    if @game.player.hand.cards_in_hand.size == 3
      @game.open_cart
    else
      puts "Final action:  Add | Show".green
      choose = gets.chomp.to_s
      if choose == 'Add'
        @game.player.hand.cards_in_hand << @game.give_to_player_card
      end
      @game.open_cart
    end
    next_game
  end

  def next_game
    puts 'PLay again? Yes or No'
    puts "Your bank - #{@game.player.bank}"
    choose = gets.chomp.to_s
    case choose
    when 'Yes'
      @game.player.hand.clear_hand
      @game.dealer.hand.clear_hand
      @game.game_start
      turn_first if @game.player.bank > 10
    when 'No'
      puts 'See you later'
      exit
    end
  end

end

GameInterface.new