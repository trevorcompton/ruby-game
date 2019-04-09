class Player
  # intitialize is never called directly, but instead called by "new"
  def initialize(name, health=5)
    @name = name.capitalize
    @health = health
    # Remember, Ruby automatically returns the last value
  end

  def health_decrease #instance method
    @health -= 1
  end

  attr_accessor :health
  attr_reader :name

  def barracks
    "Greetings, #{@name}. Your initial health will be granted as #{@health} at #{clocktower}."
  end

  def status
    "#{@name} has a health of #{@health}"
  end

  def clocktower
    time = Time.new
    time.strftime("%I:%M:%S")
  end

  if __FILE__ == $0 # executes only if the command line is on current file, can't be executed from ruby_game.rb
    player = Player.new("moe")
    puts player.name
    puts player.health
    player.w00t
    puts player.health
    player.blam
    puts player.health
  end

  # def find
    # Making a database call could be an example of a class method, as the call to the DB isn't tied to an instance
    # Class methods are all static methods
  # end
end
