# Write a one-liner that prints "The Flintstones Rock!" on a new line 10 times
# with each line being indented one space more than the previous line.

(0..9).each { |x| puts ("The Flintstones Rock!".rjust(x + "The Flintstones Rock!".length)) }

# Not the cleanest solution, but this .each method will iterate x from 0 to 9,
# padding the string with x spaces on the left on each iteration.

# Solution provided:

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# This solution highlights Ruby's ability to multiply a number by a string to 
# return the string multiple times.
