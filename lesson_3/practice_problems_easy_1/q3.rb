# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.sub!('important', 'urgent')

p advice

# The .sub! String method mutates the caller by replacing all instances of the
# the first argument with the second argument.

# The .gsub! String method is also an option (gsub leaves open the possibility
# of 0 replacements).