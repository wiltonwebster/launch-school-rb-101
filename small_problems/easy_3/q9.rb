# Palindromic Numbers

# Write a method that returns true if its integer argument is palindromic, false
# otherwise. A palindromic number reads the same forwards and backwards.

# Note our original palindrome methods won't work for numeric inputs because the
# reverse method is not defined for numeric data.

def palindrome?(input)
  input == input.reverse
end

def palindromic_number?(num)
  palindrome?(num.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true