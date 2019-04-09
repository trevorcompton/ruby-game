require_relative 'game'

describe Game do
  before(:each) do
    @game = Game.new("Kingdom")
    @player1 = Player.new("Paladin", 5)
    @player2 = Player.new("Garrison", 5)
    @game.add_player(@player1)
    @game.add_player(@player2)
    Game.any_instance.stub(:get_input).and_return("a")
  end
  context "when the player chooses Paladin" do
    it "prints out the selected name" do
      expect(@player1.name).to eq("Paladin")
    end
    # it "prints out the correct moves" do
    #   Game.any_instance.stub(:input).and_return("a")
    #   @game.play
    #   expect(moves).to output("Paladin").to_stdout
    # end
  end

  describe "conversion" do
    it "should return a 1 for a" do
      @game.conversion("a").should eq(1)
    end
  end

  describe "battle logic" do
    it "should not decrease player1 health if 2 is selected" do
      @game.battle_logic(2, 1)
      expect(@player1.health).to eq(5)
    end

    it "should decrease player1 health if input is 3 and ai is 1" do
      @game.battle_logic(3, 1)
      expect(@player1.health).to eq(4)
    end

    it "should decrease player2 health if input is 4 and ai is 1" do
      @game.battle_logic(4, 1)
      expect(@player2.health).to eq(4)
    end
  end
end
