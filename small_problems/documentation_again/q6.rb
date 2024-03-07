# Keyword Arguments

# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# The .step method takes arguments by: and to:, which have default values of 1
# and nil. It also optionally takes a block as an argument. If by, to, and a
# block are provided, the method will create a sequence starting at the calling
# object, incrementing by the by: value ending with the last value that does not
# exceed the to: value. The block then iterates through the sequence. 

# In this case, the .step method creates the sequence [5, 8], and the block
# calls puts on each element. The output will be "5" and "8" on separate lines.