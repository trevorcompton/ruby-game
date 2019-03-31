require_relative 'player' # unneccessary because game class requires player
require_relative 'game'

# player1 = Player.new("moe")
# player2 = Player.new("larry", 60)
# player3 = Player.new("curly", 125)
    
# knuckleheads = Game.new("Knuckleheads")
# knuckleheads.add_player(player1)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player3)
# knuckleheads.play



paladin = Player.new("paladin", 60)
garrison =  Player.new("garrison", 60)
# paladin/garrison is instance of class at this point
# puts name - local variable can't be found because it's out of scope
player3 =  Player.new("mechanical horseman", 30)
player4 =  Player.new("acolyte", 30)

puts "Welcome to the barracks. Please select your player."
# puts always wants a string, will always implicitly ask for .to_s
puts "Paladin - White troll with massive sword\nGarrison - Golden troll with enormous axe\n"
choice = gets.chomp
if (choice == "Paladin")
  puts "Beware of the mechanical horsemen!\n\n\n"
  player1 = Player.new("Paladin")
else
  puts "Beware of the acolytes!\n\n\n"
  player1 = Player.new("Garrison")
end
# figure out how to set name and player object dynamically without if statement
# What name do you want, and what starting health?

puts player1



  
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

# knuckleheads = Game.new("Knuckleheads")
# knuckleheads.add_player(player1)
# knuckleheads.add_player(player2)



# puts will call .to_s on whatever you give it
# calling to_s is only a naming convention taking advantage of the fact that puts explicity calls it at the end of the object




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

  .each is a method!
  status.each do

  Encapsulation: Tell the method what to do, don't ask about it - we don't care what it contains, only what it does
  


=end