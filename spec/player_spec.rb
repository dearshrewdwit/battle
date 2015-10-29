require 'player'

describe Player do
  let(:player_2){described_class.new(name2)}
  let(:player_1){described_class.new(name)}
  let(:name){"Edward"}
  let(:name2){"Chuka"}
  it "expects to return the name of the player" do
    expect(player_1.name).to eq(name)
  end

  it 'shows default health' do
    expect(player_1.health).to eq Player::DEFAULT_HEALTH
  end

  before do
    allow(player_1).to receive(:attack).and_return(20)
  end

  it "player 1 can attack" do
    r = player_1.attack
    player_2.receive_damage(r)
    expect{player_2.receive_damage(r)}.to change{player_2.health}.by(-20) 
  end

end
