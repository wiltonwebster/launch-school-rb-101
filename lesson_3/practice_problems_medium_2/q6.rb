# How could this method be simplified without changing its return value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Since the if statement sets the return value to true if the statement is true
# and the return value to false otherwise, we can remove the entire if-else
# structure and have the method return the value of the condition. We can also
# refactor the options into an array of strings, which could be useful if we 
# need to add more colors later.

def color_valid(color)
  %w(blue green).include?(color)
end
