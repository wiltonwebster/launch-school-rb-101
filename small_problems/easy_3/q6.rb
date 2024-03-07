# Exclusive Or

# Write a method named xor that takes two arguments and returns true if exactly
# one of its arguments is truthy and false otherwise. 

def xor?(statement1, statement2)
  (statement1 && !statement2) || (!statement1 && statement2)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# Solution provides a more explicit version:

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

# Solution goes on to explain that my solution isn't quite accurate because it
# can return truthy or falsy values. However, we can fix that by adding !! to 
# the beginning, so that it can never return anything but a boolean.