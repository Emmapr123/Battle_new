require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe '#attack' do
    it 'attacks a player' do
      allow(player1).to receive(:attack)
      player1.attack(player2)
    end
  end
end