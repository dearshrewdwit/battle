require 'player'

describe Player do

  let(:player_1){described_class.new(name)}
  let(:name){"Edward"}

  it "expects to return the name of the player" do
    expect(player_1.name).to eq(name)
  end
end
