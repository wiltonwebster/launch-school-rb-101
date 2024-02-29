# Describe the difference between ! and ? in Ruby. 

# 1. what is != and where should you use it?
# what if you...
  # 2. put ! before something, like !user_name
  # 3. put ! after something, like words.uniq!
  # 4. put ? before something
  # 5. put ? after something
  # 6. put !! before something, like !!user_name
  

# ! has two main uses in Ruby: placed in an expression, it is the logical not
# operator. That is, !true = false. Placed at the end of a method call, it 
# usually denotes (by convention, not by rule) that the method is desctructive.

# ? has two main uses in Ruby: placed at the end of a method call, it usually
# denotes (by convention, not by rule) that the method is checking a condition
# and will return a boolean value. Similarly, it is also the operator placed in
# a ternary operation between the condition to check and the expression if true.

# 1. != is the not equal to operator and should be used when comparing objects
# to see if they are unequal (not recommended with floating point numbers).

# 2. ! put before an expression negates the expression, returning a boolean
# which is the opposite of the truthiness of the original expression.

# 3. ! put at the end of a method call usually denotes a destructive method.

# 4 & 5. Putting a ? by itself somewhere will likely cause syntax errors. The 
# use of ? is more context-dependent than ! (See above).

# 6. Using the logical not operator twice returns the boolean value which has
# the same truthiness value as the original espression.