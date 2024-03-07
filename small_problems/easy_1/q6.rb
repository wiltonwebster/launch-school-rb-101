# Right Triangles

# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left 
# of the triangle, and the other end at the upper-right.

def triangle(num)
  num.times { |x| puts("#{' ' * (num - 1 - x)}#{'*' * (1 + x)}") }
end

userNum = gets.chomp.to_i
triangle(userNum)

# The triangle method iterates from 0 to num-1, printing one fewer space and one
# more asterisk on each successive line.