def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# How can we change this code to make the result easier to predict and easier 
# for the next programmer to maintain? That is, the resulting method should not 
# mutate either argument, but my_string should be set to 'pumpkinsrutabaga' and 
# my_array should be set to ['pumpkins', 'rutabaga']

def tricky_string_method(a_string_param)
  a_string_param += "rutabaga"
end
  
def trick_array_method(an_array_param)
  an_array_param += ["rutabaga"]
end

my_string = "pumpkins"
my_array = ["pumpkins"]

my_string = tricky_string_method(my_string)
my_array = trick_array_method(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# By calling the methods on each variable and reassigning the variables to the
# return values, we can achieve the same result without mutating the original
# objects.

# Note: the solution recommends keeping a single method and using an explicit
# return keyword to return multiple values. It then assigns both variables using
# multiple assignment.