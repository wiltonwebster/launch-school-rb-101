# Searching 101

# Write a program that solicits 6 numbers from the user, then prints a message 
# that describes whether or not the 6th number appears amongst the first 5 
# numbers.

def prompt_nth_number(ordinal)
  puts "==> Enter the #{ordinal} number:"
end

def validate_integer(num)
  num.to_i.to_s == num
end

def get_number
  input = gets.chomp
  until validate_integer(input)
    puts "==> Invalid number. Please try again."
    input = gets.chomp
  end
  input.to_i
end

ordinals = %w(1st 2nd 3rd 4th 5th last)
user_nums = []

5.times do |index|
  prompt_nth_number(ordinals[index])
  user_nums << get_number
end

prompt_nth_number(ordinals[5])
checked_num = get_number

if user_nums.member?(checked_num)
  puts "The number #{checked_num} appears in #{user_nums}."
else
  puts "The number #{checked_num} does not appear in #{user_nums}."
end
