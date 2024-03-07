# Stringy Strings

# Write a method that takes one argument, a positive integer, and returns a 
# string of alternating 1s and 0s, always starting with 1. The length of the 
# string should match the given integer.

def stringy(num)
  string = ''
  for i in (1..num)
    string << '1' if i.odd?
    string << '0' if i.even?
  end
  string
end


# This method itializes an emptry string, then iterates from 1 to the provided
# number, contatenating 1 or 0 to the string based on the parity of the index.

# The solution demonstrates that we can also use the #times method on num, since
# we can all an index variable to do the same thing. We also have the option to
# store the iteration's value in a variable and assign that variable using the
# ternary operator.


# Further exploration: Update the method to take an additional optional 
# argument that defaults to 1. If the method is called with the second argument
# set to 0, start the string with a 0 instead of a 1. 

def more_stringy(size, leading = 1)
  numbers = []

  size.times do |index|
    number = index.even? ? (leading % 2) : ((leading + 1) % 2)
    numbers << number
  end

  numbers.join
end

puts more_stringy(6)
puts more_stringy(9)
puts more_stringy(4,0)
puts more_stringy(7,0)