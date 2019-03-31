require_relative 'player'

describe Player do
  context "created as normal" do
    before do
      @health = 10
      @player = Player.new("archibald", @health)
    end
    it "has a capitalized name" do
      @player.name.should == "Archibald"
    end

    it "has an initial health" do
      @player.health.should == 10
    end
  end

  context "created with a default health"
    before do
      @player = Player.new("archibald")
    end
    it "has an initial health" do
      @player.health.should == 60
    end
end