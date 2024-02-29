# This method is intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# This method will fail if number is a non-positive integer. How can it be 
# refactored to avoid using the begin / end until construct and handle being 
# given a non-positive number (note: we do not need to find factors for invalid
# inputs, just handle them).

def better_factors(number)
  factors = []
  if number <= 0
    return factors
  end
  (1..number).each { |x| factors << x if number % x == 0 }
  factors
end
  
p better_factors(60)

# Bonus #1 - What is the purpose of number % divisor == 0?

# number % divisor == 0 evaluates true if divisor is a factor (i.e. evenly 
# divides) the number supplied by argument. 

# Bonus #2 - What is the purpose of calling the variable factors on the last
# line of the method?

# Ruby methods will implicitly return the value of the last expression if no
# explicit return keyword is supplied. If the final expression of the method 
# does not return what we need for our return value, we can call the value we
# want returned at the end.


# Provided solution recommends using a while loop to check if the number is
# greater than 0 and iterate through the possible factors:

while divisor > 0
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end