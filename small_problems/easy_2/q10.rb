# Always Return Negative

# Write a method that takes a number as an argument. If the argument is a 
# positive number, return the negative of that number. If the number is 0 or 
# negative, return the original number.

def always_negative(num)
  -num.abs
end

puts always_negative(5)
puts always_negative(-3)
puts always_negative(0)

# Solution suggests that this method is possible but perhaps less clear. It 
# suggestions that a conditional (such as ternary operator) should be used
# instead, to make the intention of the code more clear.