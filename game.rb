require_relative 'player'
require_relative 'battle_logic'

class Game
  def initialize(name)
    @name = name
    @players = []
  end

  def add_player(a_player)
    @players << a_player
  end

  attr_reader :name

  # def add_player(a_player) #passes player1, etc. as object
  #   @players.push(a_player)
  # end

  def moves
    puts "Here are your moves: \n"
    if @name == "Paladin"
      puts "a - Inquisitive Strike"
      puts "s - Shield of Faith"
      puts "d - Blitzkreig"
      puts "w - Summoning of the Acolytes"
    else
      puts "a - Imperial Enforcement"
      puts "s - Praetorian Gaurd"
      puts "d - Execution"
      puts "w - Assembly of the Horsemen"
    end
  end

  def conversion(i)
    if i == "a"
      i = 1
    elsif i == "s"
      i = 2
    elsif i == "d"
      i = 3
    elsif i == "w"
      i = 4
    end
    return i
    # puts input # can be its own test block
  end

  def get_input
    input = gets.chomp
    choice = conversion(input)
    return choice
  end

  def battle
    input = get_input
    # puts input - should be its own test
    ai = rand(1...4)
    #BattleLogic.battle_logic(@player1, @player2, input, ai)
    code = BattleLogic.battle_logic(@player1, @player2, input, ai) # refactor to use as mixin
    # this is saying assign "code" to whatever is returned by calling that method
    puts code.to_s
    puts @player1.health
    puts @player2.health
  end

  def winner
    if @player1.health > 0 || @player2.health == 0
      puts "Congratulations #{@player1.name}! You have defeated thine opponent in the field of battle!"
    else
      puts "#{@player1.name}, thine enemy has struck you down. Train harder next time!"
    end
  end

  # winner? method - use tdd

  def play
    moves
    puts "\nLet the battle begin!\n\n"
    @player1 = @players[0]
    @player2 = @players[1]
    until @player1.health == 0 || @player2.health == 0 do
      battle
    end
    winner
  end
end
