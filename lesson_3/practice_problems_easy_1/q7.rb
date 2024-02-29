flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# The flintstones array has become a nested array. Un-nest it.

flintstones.flatten!

# The .flatten! method destructively removes nested arrays from an array and
# replaces them with their constituent elements.