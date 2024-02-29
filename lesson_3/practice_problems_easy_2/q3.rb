ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# Add these ages to the hash:

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# The #merge! method destructively adds (or overwrites) key-value pairs to the 
# calling hash using the data in the argument hash.