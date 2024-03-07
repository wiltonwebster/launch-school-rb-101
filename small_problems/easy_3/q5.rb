# Squaring an Argument

# Use the multiply method from q4 to write a method that squares its argument.

def multiply(a, b)
  a * b
end

def square(a)
  multiply(a, a)
end

# Now write a "power to the n" method using the multiply method.

def nth_power(m, n)
  result = 1
  n.times { result = multiply(result, m) }
  result
end

p nth_power(5, 4)