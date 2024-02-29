# What will this code print?

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# The method definition only contains reassignments, which are not destructive.
# The program will still print "one is: one", "two is: two", and "three is: 
# three".