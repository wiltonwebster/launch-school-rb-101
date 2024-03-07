# Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0, then 
# asks if the user wants to determine the sum or product of all numbers between 
# 1 and the entered integer.

def validate_positive_integer(num)
  num.to_i.to_s == num && num.to_i > 0
end

def validate_character(char)
  char == 's' || char == 'p'
end

def calculate_product(num)
  prod = 1
  (1..num).each { |x| prod *= x }
  prod
end

def calculate_sum(num)
  sum = 0
  (1..num).each { |x| sum += x }
  sum
end

def prompt(message)
  puts ">> #{message}"
end

prompt("Pleae enter an integer greater than 0:")
user_int = gets.chomp
loop do
  break if validate_positive_integer(user_int)
  prompt("Invalid entry. Please enter an integer greater than 0:")
  user_int = gets.chomp
end
user_int = user_int.to_i

prompt("Enter 's' to compute the sum or 'p' to compute the product.")
user_char = gets.chomp
loop do
  break if validate_character(user_char)
  prompt("Invalid entry. Please enter 's' to compute sum or 'p' to compute \
  product.")
  user_char = gets.chomp
end
user_char = user_char.to_sym

results = { :p => ["product", calculate_product(user_int)],
            :s => ["sum", calculate_sum(user_int)] }

prompt("The #{results[user_char][0]} of the integers between 1 and #{user_int} \
is #{results[user_char][1]}.")