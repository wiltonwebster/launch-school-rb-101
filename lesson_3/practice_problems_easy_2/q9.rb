statement = "The Flintstones Rock!"

# Write a one-liner to count the number of lower-case 't' characters.

t_count = 0
statement.each_char { |c| t_count += 1 if c == 't' }

# Solution provided is much cleaner:

statement.count('t')