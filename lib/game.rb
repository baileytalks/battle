class Game
  attr_reader :player1, :player2, :current_player, :attacked_player

  def self.new_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @attacked_player = player2
  end

  def attack
    @attacked_player.hp -= rand(3)+1
  end

  def switch_turns
    @current_player, @attacked_player = @attacked_player, @current_player
  end

  def game_over?
    @attacked_player.hp <= 0
  end
end
