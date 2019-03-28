player1 = "Paladin"
health1 = 60

player2 = "Garrison"
health2 = 60

# puts "Players:\n\t#{player1}\n\t#{player2}"

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



=end