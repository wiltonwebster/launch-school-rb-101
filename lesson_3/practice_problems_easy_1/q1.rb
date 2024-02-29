# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# .uniq is not a mutating method, so numbers has not been changed. The puts
# method will output the original array [1, 2, 2, 3] with each element on a new
# line.