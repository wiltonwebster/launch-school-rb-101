# Below are two implementations of rolling buffers (which remove their oldest
# entries if maximum size is reached). Is there a substantive difference between
# the two implementations?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# The methods differ in which objects they modify and return. The first method
# mutates and returns the original array with the new element added and possibly
# the first element removed. The second method creates a copy of the original
# object, adds the new element to that new object, then returns that new object
# possibly with the first element removed. In the first case, there is one array
# before and after the method call, which has been mutated. In the second case,
# there is an original array which remains unchanged and a new array returned by
# the method call.

# As the solution points out, the first method is also an example of a method
# that has too many jobs. It both returns a meaningful value and mutates its 
# calling object. Therefore the second solution is probably better (if we want
# to mutate the object and return the updated array, that should be split up
# into multiple methods.)