# Palindromic Strings (Part 1)

def palindrome?(str)
  str == str.reverse
end

p palindrome?([1,2, 3, 2, 1])

# note this method words on strings or arrays, since #reverse is a method for
# both classes that behaves the same way.