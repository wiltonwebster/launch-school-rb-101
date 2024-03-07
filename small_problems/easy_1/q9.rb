# Get Middle Character

# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length, 
# you should return exactly one character. If the argument has an even length, 
# you should return exactly two characters.

def center_of(string)
  length = string.length
  
  return "Invalid String" if length.zero?
  
  if length.odd?
    index = length/2 # Integer division to get index of central character
    middle = string[index]
  else
    index = length/2 - 1
    middle = string[index, 2]
  end
  
  middle
end

p center_of('x')
p center_of('xy')
p center_of('abc')
p center_of('wxyz')
p center_of('Launch School')
p center_of('Launchschool')