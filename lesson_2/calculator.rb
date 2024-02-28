# Walk-through for making a basic calculator program

# Import YAML file with all message prompts.
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Method which operates on two numbers based on the operation provided.
def calculator(num1, num2, oper)
  case oper
  when '1' then num1 + num2
  when '2' then num1 - num2
  when '3' then num1 * num2
  when '4' then num1 / num2
  else 'Undefined operator'
  end
end

# Method which validates a number (checking int and float)
def valid_number?(num)
  integer?(num) || float?(num)
end

# Method which checks if an input is an Integer
def integer?(num)
  num.to_i.to_s == num
end

# Method which checks if an input is a Float
def float?(num)
  num.to_f.to_s == num
end

# Method which checks if an operator is valid
def valid_operator?(oper)
  valid_operators = %w[1 2 3 4]
  valid_operators.include?(oper)
end

# Method which prompts the user for input.
def prompt(message)
  puts "=> #{message}"
end

operator_list = ['+', '-', '*', '/']

# Start of program
prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  break unless name.empty?

  prompt(MESSAGES['valid_name'])
end

prompt(MESSAGES["greeting"])

# Main program loop.
loop do
  # Ask the user for two numbers and convert to floats.
  num1 = 0
  num2 = 0

  # Validate each number before asking for subsequent number.
  loop do
    prompt(MESSAGES['first_number'])
    num1 = gets.chomp
    if valid_number?(num1)
      num1 = num1.to_f
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  loop do
    prompt(MESSAGES['second_number'])
    num2 = gets.chomp
    if valid_number?(num2)
      num2 = num2.to_f
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  # Ask the user for an operation to perform and validate entry.
  prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = gets.chomp
    break if valid_operator?(operator)

    prompt(MESSAGES['valid_operator'])
  end

  # Compute and display the result to the user.
  result = calculator(num1, num2, operator)

  prompt("#{num1} #{operator_list[operator.to_i - 1]} #{num2} = #{result}")
  
  # Ask the user to do another calculation or quit the program
  prompt(MESSAGES['new_calculation'])
  selection = gets.chomp
  break unless selection.downcase.start_with?('y')
end

prompt(MESSAGES['farewell'])
# Program works well for most valid calculations.

# However, it does not work in the following cases:
# Division by zero

# With the addition of the config yml file, string interpolation is broken.