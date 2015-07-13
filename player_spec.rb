require_relative 'player'

describe Player do

  before do
    @health = 100
    @player = Player.new("larry", @health)
  end

  it "has an inital health" do
    @player.health.should == 100
  end

  it "has capitalized name" do
    @player.name.should == "Larry"
  end

  it "has a string rep" do
    @player.stats.should == "Larry has a health of #{@health} and a score of 105"
  end

  it "has a score as the sum of its health and length of name" do
    @player.score.should == (100 + 5)
  end

  it "increases health by 5 when woot" do
    @player.woot
    @player.health.should == @health + 5
  end

  it "decreases health by 5 when blam" do
    @player.blam
    @player.health.should == @health -5
  end

  context "created with a default health" do
    before do
      @player = Player.new("larry")
    end

    it "has a health of 100" do
      @player.health.should == 100
    end
  end
end
