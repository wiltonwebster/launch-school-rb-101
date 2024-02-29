# What will be displayed when running this program? Why?

def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

# The first statement will interpolate the the string_arg_one variable, which
# points to a string "pumpkins". The second statement will interolate the 
# string_arg_two variable, which points to a string "pumpkinsrutabaga".

# The tricky method takes the first argument and reassigns it to a different
# string object. Since reassignment is non-destructive, the method's first
# argument is not mutated. It then takes the second argument and mutates it with
# the #push method (using the shovel operator), so the second argument points to
# the same object which now has a different value.