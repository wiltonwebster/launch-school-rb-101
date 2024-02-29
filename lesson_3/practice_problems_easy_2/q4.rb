advice = "Few things in life are as important as house training your pet dinosaur."

# See if the name "dino" appears in the string.

advice.include?("dino")

# Note this solution does not take into account capitalization or scenarios
# where "dino" is included in a longer string.

# The solution recommends #match? instead of #include? which shares the same
# weakness but is more flexible since it can be used with RegEx as well as 
# substrings.

advice.match?("dino")