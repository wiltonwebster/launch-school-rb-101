# Build a mortgage calculator.

# Method which validates a number (checking int and float)
def valid_number?(num)
  pos_integer?(num) || pos_float?(num)
end

# Method which checks if an input is a positive Integer
def pos_integer?(num)
  num.to_i.to_s == num && num.to_i.positive?
end

# Method which checks if an input is a positive Float
def pos_float?(num)
  num.to_f.to_s == num && num.to_f.positive?
end

# Method which performs the numeric validation and returns a float.
def entry_validation(entry)
  loop do
    if valid_number?(entry)
      entry = entry.to_f
      break
    else
      puts 'Error encountered. Please enter a valid number:'
      entry = gets.chomp
    end
  end
  entry
end

# Method which calculates monthly payment from principal, monthly rate, and
# number of months.
def calculate_monthly_payment(principal, month_rate, num_month)
  monthly_payment =
    principal * month_rate / (1 - (1 + month_rate)**(-num_month))
  monthly_payment.round(2)
end

# Start of program.
puts 'Welcome to the mortgage payment calculator.'

puts 'Please enter the total amount of the loan:'
principal = gets.chomp

# Validate that principal is a valid numeric value and convert to a float.
principal = entry_validation(principal)

print 'Please enter the APR as a percentage without the percent sign. '
puts "For example, please enter '4.5' for a 4.5% APR:"

annual_percent = gets.chomp

# Validate that APR is a valid numeric amount and convert to a float.
annual_percent = entry_validation(annual_percent)

puts 'Please enter the loan duration in years:'
duration_years = gets.chomp

# Validate that years is a valid numeric amount and conert to a float.
duration_years = entry_validation(duration_years)

# Convert APR and years to MPR (decimal) and months.
monthly_percent = annual_percent / 12.0
monthly_rate = monthly_percent / 100
duration_months = duration_years * 12.0

# Calculate the monthly payments.
monthly_payment =
  calculate_monthly_payment(principal, monthly_rate, duration_months)

print "Your payments will be $#{monthly_payment} per month "
puts "for the next #{duration_months.ceil} months."

puts 'Thank you for using the Mortgage Payment Calculator. Bye!'
