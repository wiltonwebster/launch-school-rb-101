# When will I Retire?

# Build a program that displays when the user will retire and how many years she
# has to work until retirement.

require 'time'

curr_year = Time.now.year

puts 'What is your age?'
curr_age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retire_age = gets.chomp.to_i

years_to_retirement = retire_age - curr_age
retirement_year = years_to_retirement + curr_year

puts "It's #{curr_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"