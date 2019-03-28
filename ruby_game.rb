def barracks(name, health)
  "Greetings, #{name}. Your initial health will be granted as #{health} at #{clocktower}."
  # Remember, Ruby automatically returns the last value
end

def clocktower
  time = Time.new
  time.strftime("%I:%M:%S")
end

puts barracks("Paladin", 60)
puts barracks("Garrison", 60)
# puts name - local variable can't be found because it's out of scope


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



=end