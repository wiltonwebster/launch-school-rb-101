# We have been given a method called is_an_ip_number? which determines if a 
# string is a numeric string between 0 and 255. Using this method, we need to
# write method that verifies if a string is a dot-separated IP address (for
# example: 10.4.5.11).

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  return true
end

# The above attempt at such a method does not return a false condition and does
# not correctly label inputs as invalid if they contain more than or fewer than
# 4 components (i.e. 4.5.5 and 1.2.3.4.5 should be returned as invalid). Without
# using RegEx, fix the method.

# Added a return false line that checks if the size of the array resulting from
# splits is something other than 4. Also replaced the break in the while loop
# with a return false, so that if validation of an element in the array fails, 
# the method will immediately return false, rather than breaking the loop and
# returning true.