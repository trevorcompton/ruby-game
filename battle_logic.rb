module BattleLogic
  # if passing nothing into it this is a class method
  # if a class method, @game.battle_logic wouldn't work because there's no instance of battle_logic, but Game.battle_logic
  # def self.battle_logic if a class method
  # Game is a mold
  # @game = Game.new could be a red cup or a blue cup or anything
  def self.battle_logic(player1, player2, input, ai)
    if input == 2 && (ai == 1 || ai == 3 || ai == 4)
      code = "Thou hast blocked thine opponent's hit!"
    elsif ai == 2 && (input == 1 || input == 3 || input == 4)
       code = "Thine opponent hath blocked thy hit!"
    elsif input == 2 && ai == 2
      code = "You hath both held thine guard!"
    elsif (input == 1 && ai == 1) || (input == 3 && ai == 3) || (input == 4 && ai == 4)
      code = "You hath both taken a hit!"
      player1.health_decrease
      player2.health_decrease
    elsif (input == 1 && ai == 3) || (input == 3 && ai == 4) || (input == 4 && ai == 1)
      code = "Thou hast struck thine opponent, keep fighting!"
      player2.health_decrease
    elsif (input == 1 && ai == 4) || (input == 3 && ai == 1) || (input == 4 && ai == 3)
      code = "Thine opponent hath smote you, keep up thine guard!"
      player1.health_decrease
    end
    return code
  end
end