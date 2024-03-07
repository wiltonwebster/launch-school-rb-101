# Mandatory Blocks

# The Array#bsearch method is used to search ordered Arrays more quickly than
# #find and #select can. How would you search this Array to find the first 
# element whose value exceeds 8?

a = [1, 4, 8, 11, 15, 19]

# bsearch is an Array instance method which accepts a block and returns the 
# first element in the array for which the block evaluates to true.

p a.bsearch { |element| element > 8 }
