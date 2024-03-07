# Repeat Yourself

# Write a method that takes two arguments, a string and a positive integer, and 
# prints the string as many times as the integer indicates.

def repeat(str, int)
  int.times { puts str }
end

repeat('Hello', 3)

# This method takes two arguments, a string and an integer. The #times method
# called on the integer repeats the block int times, and the block outputs the
# value referenced by str.