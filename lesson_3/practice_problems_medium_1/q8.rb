def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# This method returns the winning input from a rock-paper-scissors game (if the
# game is a tie, it returns once the input both players entered). 

#What is the result of this call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# The call should return "paper". The two inner-most calls return "paper" and 
# "rock", respectively. Those are then given as inputs, which returns "paper".
# Finall, that is given as an input with "rock", which returns "paper".