# What will this code print?

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Unlike parts (a) and (b), this method contains destructive method calls, which
# will mutate the arguments that are passed in. The #gsub! method substitutes 
# any string it finds matching the first argument with the string provided in
# the second argument. Thus, the method mutates the object pointed at by one to
# be "two", then it mutates the object referenced by two to be "three", and 
# finally it mutates the object referenced by three to be "one". Since the 
# variables have been mutated, the program will print: "one is: two", "two is:
# three", and "three is: one".