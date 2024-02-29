advice = "Few things in life are as important as house training your pet dinosaur."

# Shorten the sentence. Use the #slice! method to make the return value 
# everything up to "... as ", leaving the value of advice as everything from
# "house" onward. 

advice.slice!(0, 39)

# This syntax for #slice! returns 39 characters from the original string, 
# starting at position 0. Those characters are removed from the original string.


# As a bonus, what happens if you use the String#slice method instead?

# Using #slice insead of #slice! would return the same set of characters, but
# would not modify the original advice string.


# Solution points out that we don't need to hardcode the number of characters to
# slice. Instead, we should enter the second argument as the index of the start
# of the substring we do not want sliced. For example:

advice.slice!(0, advice.index('house'))