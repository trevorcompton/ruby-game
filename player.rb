class Player
  # intitialize is never called directly, but instead called by "new"
  def initialize(name, health=60)
    @name = name.capitalize
    @health = health
    # Remember, Ruby automatically returns the last value
  end

  def health_decrease #instance method
    @health -= 1
  end

  def to_s
    "Hi, I'm, #{@name}! My health is #{@health}!"
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
end
