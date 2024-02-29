# This statement produces an error. Why? How can it be fixed?

puts "the value of 40 + 2 is " + (40 + 2)

# This should produce a TypeError, since the program will not implicitly convert
# the integer 42 into a string in order to be used by the puts method. In order
# to use the + as the concatenation operator, we would need to call the string
# conversion method (to_s) on the expression (40 + 2). We could also use string
# interpolation instead.

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40+2}"