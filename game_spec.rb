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
    #   @game.play
    #   expect(moves).to output("Summoning of the Acolytes\n").to_stdout
    # end
  end

  describe "conversion" do
    it "should return a 1 for a" do
      @game.conversion("a").should eq(1)
    end
  end

  describe "battle logic" do
    it "should not decrease player1 health if 2 is selected" do
      BattleLogic.battle_logic(@player1, @player2, 2, 2)
      expect(@player1.health).to eq(5)
    end

    it "should decrease player1 health if input is 3 and ai is 1" do
      BattleLogic.battle_logic(@player1, @player2, 3, 1)
      expect(@player1.health).to eq(4)
    end

    it "should decrease player2 health if input is 4 and ai is 1" do
      BattleLogic.battle_logic(@player1, @player2, 4, 1)
      expect(@player2.health).to eq(4)
    end
  end

  # describe "random" do
  #   it "should boost the player's health" do

  #   end

  #   it "should boost the opponent's health" do

  #   end
  # end

  describe "winner" do
    it "should display the correct winner" do
      @player1.health == 1
      @player2.health == 0
      expect{@game.winner(@player1, @player2)}.to output("Congratulations Paladin! You have defeated thine opponent in the field of battle!\n").to_stdout
      # Eventually refactor this to load the puts into a variable and just test variable
      # expect(argument)
      # expect {block}
    end
  end
end
