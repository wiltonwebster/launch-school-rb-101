munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# Will the following method call mess with the data in the munsters hash?

mess_with_demographics(munsters)

# The mess_with_demographics will mess with the data in the original hash. The 
# individual values in the nested hash are reassigned (rather than mutated), but
# the hash itself is mutated as a result. The method will return the values 
# being operated on, and the munsters hash will have ages that have been 
# incremented by 42 and genders that all read "other".