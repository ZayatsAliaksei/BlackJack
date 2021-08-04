class Interface
  attr_reader :player, :dealer, :bank

  BET = 10

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
    first_deal
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
    @dealer.set_bet(BET)
    @player.set_bet(BET)
  end

  def first_deal
    @player.show_hand
    player_move_1
  end

  def player_move_1
    puts "Choose action: Skip | Add | Show".green
    choose = gets.chomp.to_s
    case choose
    when 'Add'
      @player.hand << take_cart
      dealer_move
    when 'Skip'
      dealer_move
    when 'Show'
      open_cart
    else
      puts "Plz check yor input"
      player_move_1
    end
  end

  def dealer_move
    if @dealer.hand_sum <= 17
      @dealer.hand << take_cart
      player_move_2
    else
      player_move_2
    end
  end

  def player_move_2
    if @player.hand.size == 3
      open_cart
    else
      puts "Final action:  Add | Show".green
      choose = gets.chomp.to_s
      if choose == 'Add'
        @player.hand << take_cart
      end
      open_cart
    end
  end

  def open_cart
    player_carts_sum = @player.hand_sum
    dealer_carts_sum = @dealer.hand_sum
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
    another_game
  end

  def player_wins(player)
    player.get_winning(BET * 2)
  end

  def tie
    @player.get_winning(BET)
    @dealer.get_winning(BET)
  end

  def another_game
    puts 'PLay again? Yes or No'
    puts "Your bank - #{@player.bank}"
    choose = gets.chomp.to_s
    case choose
    when 'Yes'
      @player.clear_hand
      @dealer.clear_hand
      game if @player.bank > 10
    when 'No'
      puts 'See you later'
      exit
    end
  end

end
