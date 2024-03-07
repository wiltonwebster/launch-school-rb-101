# Arithmetic Integer

# Write a program that prompts the user for two positive integers, and then 
# prints the results of the following operations on those two numbers: addition,
# subtraction, product, quotient, remainder, and power. Do not worry about 
# validating the input.

def validate_positive_integer(num)
  num.to_i.to_s == num && num.to_i > 0
end

def get_number
  input = gets.chomp
  until validate_positive_integer(input)
    prompt "Invalid entry. Please try again."
    input = gets.chomp
  end
  input.to_i
end

def prompt(message)
  puts "==> #{message}"
end

def operations(num1, num2)
  sum = num1 + num2
  diff = num1 - num2
  prod = num1 * num2
  div = num1 / num2
  mod = num1 % num2
  pow = num1 ** num2
  return [sum, diff, prod, div, mod, pow]
end

prompt("Enter the first number:")
num1 = get_number

prompt("Enter the second number:")
num2 = get_number

results = operations(num1, num2)
operators = %w(+ - * / % **)

6.times { |i| prompt("#{num1} #{operators[i]} #{num2} = #{results[i]}") }
