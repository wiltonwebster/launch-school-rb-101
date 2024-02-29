# What will this code print?

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Similar to part (a), this method definition also only contains reassignments,
# which are non-destructive. The variables one, two, and three are not mutated
# by the method, so the program will once again print "one is: one", "two is:
# two", and "three is: three".