# Parent Class

s = 'abc'
puts s.public_methods.inspect

# This code prints out all public methods that can be called on s, including all
# the inherited methods from Object, BasicObject, and Kernel. How can the code 
# be modified to print only the methods that are defined or overridden by the 
# String class?

s = 'abc'
puts s.public_methods(false).inspect

# The documentation shows that the #public_methods method takes one argument,
# which is set by default to true. If the argument is false, it will only print
# the methods available to the receiver.