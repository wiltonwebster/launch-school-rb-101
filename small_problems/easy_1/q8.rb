# Reverse the Digits in a Number

def reversed_number(number)
  str = number.to_s
  str.reverse!.to_i
end

p reversed_number(12345)
p reversed_number(12213)
p reversed_number(456) 
p reversed_number(12000)
p reversed_number(12003)
p reversed_number(1)

# The reversed_number method saves the value of the argument to a new method
# local variable as a string, to avoid mutating the argument. Then, the string
# is reversed and turned back into an integer before it is returned.