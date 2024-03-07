# Multiple Signatures

# What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# The #fetch method for arrays has 3 possible argument lists. If an integer
# alone is supplied, then the method returns the element at that index, or nil
# if the index is not found in the array. If an integer and a default_value are
# passed, then it returns the default value instead of nil when the index is out
# of range. If an integer and a block are passed, then it returns the value of
# the block with the index passed into the block if the index is out of range.

# The first puts statement will output nothing, since the integer is out of 
# range, and the method call returns nil.

# The second puts statement will output 'beats me', since the integer is out of
# range, and the default_value is 'beats me'.

# The third puts statement will output 49, since the integer is out of range, 
# and the block returns the index (7) raised to the second power.


# Note - first answer is incorrect. Unlike the Array#[] method (which returns 
# nil for an out of range index), the Array#fetch method returns an IndexError.