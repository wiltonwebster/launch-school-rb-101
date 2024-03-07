# Odd Numbers

# Print all odd numbers from 1 to 99, inclusive, to the console, with each 
# number on a separate line.

(1..99).each { |x| puts x if x % 2 == 1 }

# Could have also made the condition if x.odd?