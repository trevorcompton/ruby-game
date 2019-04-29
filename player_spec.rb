require_relative 'player'

describe Player do
  # describes and contexts are interchangeable and can be nested, look at convetions to see when to use
  before do
    health = 10
    @player = Player.new("archibald", health)
  end
  it "has a capitalized name" do
    @player.name.should == "Archibald"
    #expect(@player.name).to eq "Archibald" - Ramsey syntax
  end

  it "has an initial health" do
    @player.health.should == 10
  end


  context "created with a default health" do
    before do
      @player = Player.new("archibald")
    end
    it "has an initial health" do
      @player.health.should == 5
    end
  end
end

# mock - replace whole object with fake object
# stub - replace one method call or value