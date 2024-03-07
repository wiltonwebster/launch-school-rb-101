# Default Arguments in the Middle

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print.

# According to documentation, default options can be anywhere in the argument
# list but must all be grouped together. If the default arguments appear in the
# middle, required arguments on the left will be filled starting from the left,
# and required arguments on the right will be filled starting from the right. If
# the are any arguments left over to be assigned to the arguments with default
# values, those are then assigned left to right. 

# Therefore, in this example:
# a is assigned to 4 (assigning required arguments from the left).
# d is assigned to 6 (assigning required arguments from the right).
# 5 is the only unassigned argument, so it is assigned to the left-most 
# argument with a default, which is b.
# c is assigned to its default value of 3.

# my_method(4,5,6) outputs [4, 5, 3, 6].