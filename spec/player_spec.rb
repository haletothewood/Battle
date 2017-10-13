require 'player'

describe Player do

  let(:player1) { described_class.new('David') }
  let(:player2) { described_class.new('Alex') }

  describe '#name' do
    it 'returns players names' do
      expect(player1.name).to eq('David')
    end
  end

  describe '#hp_value' do
    it 'returns the hp value' do
      expect(player1.hp_value).to eq(described_class::DEFAULT_HP)
    end
  end


  describe '#receive_damage' do
    it 'reduces the player hp value' do
      srand(1)
      # allow(player2).to receive(:receive_damage).and_return player2.hp_value - 10
      expect { player2.receive_damage }.to change { player2.hp_value }.by(-5)
    end
  end
end
