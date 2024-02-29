# What will this program output? Why?

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# The first puts statement will output "My string looks like this now: 
# pumpkinsrutabaga" because the shovel operator mutates a_string_param, which is
# referncing the same object as my_string. The second puts statement outputs "My
# array looks like this now: ["pumpkins"]" because the an_array_param varaible
# is reassigned rather than mutated in the method definition. Therefore, 
# my_array still points to ["pumpkins"] while an_array_param points to 
# ["pumpkins", "rutabaga"].