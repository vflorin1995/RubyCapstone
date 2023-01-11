require_relative '../game'

describe Game do
  context 'new game' do
    game = Game.new?('yes', '2002/1/2', '2002/2/5')
    it 'creates a new game' do
      expect(game).to be_an_instance_of Game
    end
    it 'Return correct multiplayer' do
      expect(game.multiplayer).to eq 'yes'
    end
    it 'Return correct last_played_at' do
      expect(game.last_played_at.year).to eq 2002
    end
  end  
end
