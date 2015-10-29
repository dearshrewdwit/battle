require 'game'

describe Game do
  let(:game) {described_class.new}
  let(:player1) {double(:player1)}
  let(:player2) {double(:player2)}

  
  it "it can attack" do
    expect(player2).to receive(:receive_damage)
    game.attack(player2)
  end
end
