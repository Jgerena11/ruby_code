#refers to file player.rb
require_relative 'player'
require_relative 'treasure_trove'

describe Player do

  context 'has health greater than 100' do
    before do
      @player = Player.new('larry', 150)
    end
    it 'is strong' do
      expect(@player).to be_strong
    end
  end

  context 'has health of 100 or less' do
    before do
      @player = Player.new('john', 100)
    end

    it 'is not strong' do
      expect(@player).not_to be_strong
    end
  end

  before do
    @initial_health = 150
    @player = Player.new("larry", @initial_health)
  end

  it "has a capitalized name" do
    expect(@player.name).to eq ("Larry")
  end

  it "has an initial health" do
    expect(@player.health).to eq (150)
  end

  it "has a string representation" do
    @player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))
    expect(@player.to_s).to eq("I'm Larry with health = 150, points = 100, and score = 250")
  end

  it "computes a score as the sum of its health and points" do
    @player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))

    expect(@player.score).to eq(250)
  end

  it "increases health by 15 when w00ted" do
    @player.w00t
    #puts @player.health
    expect(@player.health).to eq(165)
  end

  it "decreases health by 10 when blammed" do
    @player.blam
    expect(@player.health).to eq(140)
  end

  context "in a collection of players" do
    before do
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)

      @players = [@player1, @player2, @player3]
    end

    it "is sorted by decreasing score" do
      @players.sort.should == [@player3, @player2, @player1]
    end
  end

  it "computes points as the sum of all treasure points" do
  @player.points.should == 0

  @player.found_treasure(Treasure.new(:hammer, 50))

  @player.points.should == 50

  @player.found_treasure(Treasure.new(:crowbar, 400))

  @player.points.should == 450

  @player.found_treasure(Treasure.new(:hammer, 50))

  @player.points.should == 500
end
end
