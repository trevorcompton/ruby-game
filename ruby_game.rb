require_relative 'player' # unneccessary because game class requires player
require_relative 'game'
puts "\n<><><><><><><><><><><><><><><><><><><><><><><><><><>"
puts "Welcome to the barracks. Please select your player."
# puts always wants a string, will always implicitly ask for .to_s
puts "<><><><><><><><><><><><><><><><><><><><><><><><><><>\n\n\n\n"

puts "//================={DOMINION}=================\\\\"
puts "|| Paladin - White troll with massive sword   ||\n"
puts "|| Garrison - Golden troll with enormous axe  ||\n"
puts "\\\\============================================//\n\n\n\n"
puts "(Type 'Paladin' or 'Garrison' -- case sensitive)\n"
# puts will call .to_s on whatever you give it
# calling to_s is only a naming convention taking advantage of the fact that puts explicity calls it at the end of the object
player1 = Player.new(gets.chomp) # chomp removes newline at the end
player2 = Player.new("opponent", 5)
puts "\n\n..........................................."
puts "You have selected the #{player1.name} at your own peril."
puts "...........................................\n\n"
dominion = Game.new("dominion") # pass player and opponent instances into Game class
dominion.add_player(player1)
dominion.add_player(player2)
dominion.play

# "Everything is an object" in Ruby means that everything was created from a class
# String "Joe" <- String class <- Class class






#   puts choice.barracks


#   puts paladin.status
#   puts garrison.status

#   players = [paladin, garrison, player3, player4]

#   players.each do |player|
#     5.times do
#       player.health_decrease
#     end
#     puts player.health
#   end

# x = 8
# puts "Hello #{x}th player"

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
  self refers to the class you're defining

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

  .each is a method!
  status.each do

  Encapsulation: Tell the method what to do, don't ask about it - we don't care what it contains, only what it does

  Don't pass instance variables as method arguments - If it's an instance variable then other things probably need to know about them and they will be available for use inside the method anyway

  Is a module a class method? - Yes
  If not are they functionally similar?
  Is an object just an instance of a class? - Yes
  Or do/can they span multiple classes?

  if self.battle_logic is a class method
  you don't call self. in front of it when actually calling it

  Game.battle_logic ==> Game is the class, the mold for the cups

  @game (or game) = Game.new ==> Now we have a specific object, a red cup or a blue cup from the mold
  @game.battle_logic will not work because you're not passing anything into the class method
  self.battle_logic is out of scope, it is not defined in that instance
  Game.battle_logic is the same as self.battle_logic
  self refers to the class you're defining

  blocks:
  3.times { puts "message" }


  10.times do
    puts "message" <- put all of this code into the times method
  end


  array = [1, 2, 3, 4]
  array.each do |item|
    puts item * item
  end

  numbers.select do |number| <- this is just the arguments
    number > 20 <- this is the actual block
  end

  1.upto(10) |parameter|
    puts "message"
  end

  messages.each do |m|
    m = "message"
    puts m
  end

  Are blocks just another way to write loops?
  Block puts code as a variable into a method

  >> numbers.sort { |a, b| b <=> a }
  => [65, 24, 13, 8]
  a and b are any number in the array, passed in as arguments to the block and sorted
  sort interprets results of the spaceship operator and orders them because b is in front of a
  You have to know that sort expects 2 parameters
  No external arguments are being passed in

  code = "Hello World"

  3.times do |code|
    puts code
  end

  symbols + structs:

  :name = "Joe"
  :name can't ever be a variable, it is the value

  :name is {name = "Joe"}
  :name is {"Joe"}
  :name is {name}

  type: :name
  name: :joe
  Think of :joe as a type - like int, string, etc
  "joe" => :joe - they don't really know what it is or have any special relationship

  Think of a symbol as a simple value

  def authorize_paid_content!
    authorize! :view, :paid_content
  end

  def authorize_paid_content!
    authorize! 1, 2 -> functionally the same
  end

  :name

  class snack
    attr_reader :name, :carbs

    def initialize(name, carbs)
      @name = name
      @carbs = carbs
    end
  end

  IS THE SAME AS

  Snack = Struct.new(:name, :carbs)
  prevents from having to make explicit class
  "might grow up to be a class someday"

  Then use the code here:
  popcorn = Snack.new('popcorn', 20)
  puts popcorn.name
  puts popcorn.carbs

  candy = Snack.new('candy', 15)
  puts candy.name
  puts candy.carbs

  Is a struct just a shorthand to writing a small class?
  What is a constant?

  hashes:
  A hash is an indexed collection of object references
  Is a hash a way to hard code/permanentize a variable's reference to an object?
  Does the key have to be a symbol?

  snack_carbs = {:candy => 15, pretzel: :10, soda: :5}
  snack_carbs[:candy] -> 15

  names = Hash.new(3)
  names = {"Joe" => 4, "Bob" => 8}
  names[:fred] -> 3
  array[5]
  hash[3] - doesn't work because the elements are random, it would need the key "3", would not return 3rd element

  snack_carbs = Hash.new(0) - prevents the default carbs value from being "nil"

  look up reduce method

  custom iterators:

  def once
    puts "Before yield"
    yield - calls the block that was passed to this - yield is a special ruby keyword that calls the block passed to this method
    puts "After yield"
  end

  once { puts "Running your block" }

  def three_times - you don't see the implied block argument |number|
    puts "Ready"
    yield(1)
    puts "Set"
    yield 2 - parentheses optional
    puts "Go"
    yield 3
  end

  three_times { |number| puts number }

  def compute
    puts yield
  end

  compute do
    "Hello"
    7
    3.14 - this gets printed because the last expression is returned
  end

=end
