munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways:

# 1. "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# 2. "The munsters are creepy in a good way."
# 3. "the munsters are creepy in a good way."
# 4. "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

# These 4 destructive methods do the following:
  # Swap uppercase to lowercase and vice versa for every character
  # Upcase the first letter and downcase every other letter
  # Downcase every letter
  # Upcase every letter