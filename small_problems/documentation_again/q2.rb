# Optional Arguments Redux

# What will each of the 4 puts statements print?

require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

# The ::civil method is an alias for the ::new method for the Date Class. The
# method has 4 optional inputs: Year, Month, Day of Month, and date of switch 
# from the Julian to Gregorian calendar. By default, these 4 arguments take the
# values -4712, 1, 1, and ITALY (which is a constant that holds the date that
# Italy and the Catholic Church switched from Julian to Gregorian). The default
# values for each argument will only be overridden if values are passed into the
# method explicitly.

# Therefore the statements will output the following:

puts Date.civil               # -4712-01-01
puts Date.civil(2016)         # 2016-01-01
puts Date.civil(2016, 5)      # 2016-05-01
puts Date.civil(2016, 5, 13)  # 2016-05-13

# Note that the date given by Date.civil with no arguments uses the Julian 
# calendar before the ITALY switch date, so it may not refer to the same day in
# history as another date/time system using a different switch date.