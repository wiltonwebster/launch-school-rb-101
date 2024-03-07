# Counting the Number of Characters

# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. Spaces should not be counted as a 
# character.

puts "Please enter a word or sentence."
user_input = gets.chomp

char_count = 0
length = user_input.length
length.times do |i|
  char_count += 1 if user_input[i] != ' '
end

puts "There are #{char_count} characters in #{user_input.inspect}."

# Solution points out that we can call #.delete with ' ' as an argument, then
# call size on the result. 

number_of_characters = user_input.delete(' ').size
