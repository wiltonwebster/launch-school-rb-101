# What is the result of the puts statement on the last line?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# When informal_greeting is initialized, it references the value object in the
# greetings hash. Therefore, when informal_greeting has the shovel operator used
# on it, the object in the hash is mutated, as is the hash object itself. When
# puts greetings is called, it will output {:a=>"hi there"}.