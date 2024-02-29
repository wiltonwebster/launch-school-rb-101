# Predict the output of this code:

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Strings are mutable objects in Ruby. Therefore, when two objects referencing
# the same string value are created, they will have different object IDs. Thus,
# a.object_id and b.object_id will be different. However, when c is initialized,
# it references the same object as a, so c.object_id will equal a.object_id.