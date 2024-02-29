ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Determine if "Spot" is present in the hash.

p ages["Spot"] # returns nil

# Bonus: What are two other hash methods that could work?

p ages.include?("Spot") # returns false
p ages.select! { |k,v| k == "Spot" } # returns nil
# note - this actually returns an empty hash, not nil. This answer is incorrect.


# Solution provides better methods which all return false:
p ages.key?("Spot") # returns false
p ages.member?("Spot") # returns false

# According to documentation, #key?, #include?, and #member? are all aliases for
# one another when called on hashes.
