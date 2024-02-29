# Predict the output of this program:

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Integers are immutable objects in Ruby, therefore if two variables reference
# the same integer value, they will have the same object ID. When c is pointed
# at a, it also references the same location in memory. Therefore, a.object_id,
# b.object_id, and c.object_id will all be identical.