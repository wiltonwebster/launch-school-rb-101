# How big is the room?

# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.

SQ_METERS_TO_SQ_FEET = 10.7639

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

sq_meters = (length * width).round(2)
sq_feet = (sq_meters * SQ_METERS_TO_SQ_FEET).round(2)

puts "The area of the room is #{sq_meters} square meters " + \
      "(#{sq_feet} square feet)."