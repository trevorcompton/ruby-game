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

  attr_accessor :health

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
end

  player1 = Player.new("paladin", 60)
  player2 =  Player.new("garrison", 60)
  # player1 is instance of class at this point
  # puts name - local variable can't be found because it's out of scope
  puts player1.barracks
  puts player2.barracks
  # puts always wants a string, will always implicitly ask for .to_s
  
  3.times do
    player1.health_decrease
    player2.health_decrease
  end

  puts player1.status
  puts player2.status
  puts player1.health
  puts player2.health
  player1.health = 60
  player2.health = 60
  puts player1.health
  puts player2.health

x = 8
puts "Hello #{x}th player"

=begin
  \n - newline
  \t - tab

  "" - allows for string interpolation
  '' - does not
  #{} implicitly calls .to_s

  variables are the type of what's inside since Ruby is dynamically typed - 
  no need to write "string x" or "int y"
  letter = "abc" - string variable
  number = "123" - int variable
  etc.

  Variables hold references to objects, not the objects themselves
  x = "Hawaii" (only one string object)
  y = x
  y.object_id >> 70219766816440 (Points to actual object in memory)
  x.object_id >> 70219766816440 (same object ID, but not actual object)
  x[0] = 'G'
  y >> Gawaii

  x.ljust(10, '.') >> Hawaii..........

  rank * 2 = rank.*(2)

  ri - method library

  x.start_with?("H") - predicate methods have ?

  SSO - Authentication: Who you are
  CanCan - Authorization: What you can do

  self.puts("What's my method?")
  puts ("What's my method?")
  Anytime there isn't an implicit reciever (left side of dot), it is self
  Main is a global object referenced by self
  Self is a private method

  ! - naming convention to modify the original instead of returning changed copy

  attr_reader :title =  def title 
                          @title
                        end
  Allows the instance variable to be read outside the class

  attr_writer :title =  def title=(new_title)
                          @title = new_title
                        end
  Allows the instance variable to be written to outside the class

  attr_accessor :title makes both getter and setter

  Make sure to understand class methods
  Read up on instance in Ruby
  Class method = static method
  Class method does not have access to instance variables because it's operating at class level not instance level

=end