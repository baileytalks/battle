require './lib/game.rb'
require './lib/player.rb'

describe Game do
  describe '#attack' do
    it 'reduces player health' do
      player1 = 'player1'
      player2 = Player.new('Bar', 20)
      game = Game.new(player1, player2)
      game.attack
      expect(player2.hp).to eq 18
    end
  end
end
