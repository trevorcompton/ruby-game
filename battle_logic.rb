module BattleLogic
  # if passing nothing into it this is a class method
  # if a class method, @game.battle_logic wouldn't work because there's no instance of battle_logic, but Game.battle_logic
  # def self.battle_logic if a class method
  # Game is a mold
  # @game = Game.new could be a red cup or a blue cup or anything
  def self.battle_logic(player1, player2, input, ai)
    if input == 2 && (ai == 1 || ai == 3 || ai == 4)
      code = "\nThou hast blocked thine opponent's hit!\n\n) <-\n\n"
    elsif ai == 2 && (input == 1 || input == 3 || input == 4)
       code = "\nThine opponent hath blocked thy hit!\n\n-> (\n\n"
    elsif input == 2 && ai == 2
      code = "\nYou hath both held thine guard!\n\n) (\n\n"
    elsif (input == 1 && ai == 1) || (input == 3 && ai == 3) || (input == 4 && ai == 4)
      code = "\nYou hath both taken a hit!\n\n-> <-\n\n"
      player1.health_decrease
      player2.health_decrease
    elsif (input == 1 && ai == 3) || (input == 3 && ai == 4) || (input == 4 && ai == 1)
      code = "\nThou hast struck thine opponent, keep fighting!\n\n-> x\n\n"
      player2.health_decrease
    elsif (input == 1 && ai == 4) || (input == 3 && ai == 1) || (input == 4 && ai == 3)
      code = "\nThine opponent hath smote you, keep up thine guard!\n\nx <-\n\n"
      player1.health_decrease
    end
    return code # this is the only thing this method returns!
  end
end

# look into calling instance methods inside module

# a module, when included, becomes part of the class it's called in

# include SiteProtection - now you can use everything from the SiteProtection module as if it were in your class
# No need to explicitly call SiteProtection.method every time

# include StewardshipLogger::Loggable - just namespacing, points to a nested module
# When you include that module, it can have seperate instance and class method
# Modules are just another way to organize code, they can have both instance and class methods
# If it's calling methods that aren't defined in the class, it's probably coming from the module
# By putting it into a module, you're saying this won't be run on its own, it's meant to be shared
