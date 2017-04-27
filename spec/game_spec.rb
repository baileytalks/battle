require './lib/game.rb'
require './lib/player.rb'

describe Game do
  describe '#attack' do
    it 'reduces player health' do
      player = Player.new('Foo', 20)
      game = Game.new(player, player)
      game.attack(player)
      expect(player.hp).to eq 10
    end
  end
end
