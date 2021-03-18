class Game
attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @current_player = @player1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_player == @player1 ? @player2 : @player1
  end

end 