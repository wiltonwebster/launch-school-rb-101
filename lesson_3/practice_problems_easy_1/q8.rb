flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3,
                "BamBam" => 4, "Pebbles" => 5 }

# Create an array containing two elements: Barney's name and number.

barney_ary = flintstones.assoc("Barney")

# Did not know the .assoc method existed and had to look at the solution. 
# Documentation notes that this method works on arrays to find nested arrays
# that begin with the given argument; it also works on hashes when passed a key
# to return the key-value pair as a two-element array.