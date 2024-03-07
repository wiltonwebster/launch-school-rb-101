# String Assignment

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this code print out?

# The code prints:
# Alice
# Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this code print out? Why?

# The code prints:
# BOB
# BOB

# name and save_name are both pointing at the same object, the string 'Bob'. 
# When #upcase! is called on name, the object name references is mutated to 
# 'BOB'. All varaibles referencing that object still reference that object, so
# when name and save_name are called by the puts method, they both have the 
# value 'BOB'.