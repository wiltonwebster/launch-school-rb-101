# Bannerizer

# Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)
  width = string.length + 2
  
  puts "+#{'-' * width}+"
  puts "|#{' ' * width}|"
  puts "| #{string} |"
  puts "|#{' ' * width}|"
  puts "+#{'-' * width}+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# This method takes finds the number of characters to be printed inside the left
# and right edges and assigns that to width. It then makes use of Ruby's ability
# to multiply strings by integers for duplication to print the top edge, an 
# empty line, the message line, another empty line, and the bottom edge.