# What's my Bonus?

# Write a method that takes two arguments, a positive integer and a boolean, and
# calculates the bonus for a given salary. If the boolean is true, the bonus
# should be half of the salary. If the boolean is false, the bonus should be 0.

def calculate_bonus(salary, deserving)
  deserving ? (salary/2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# The method uses a ternary operator - if the 'deserving' parameter is set to 
# true, bonus is calculated as salary/2. Otherwise, the bonus is set to 0.