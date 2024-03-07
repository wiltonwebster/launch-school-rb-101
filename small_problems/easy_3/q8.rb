# Palindromic Strings (Part 2)

def real_palindrome?(str)
  alphanumeric = str.downcase.delete('^a-z0-9')
  alphanumeric == alphanumeric.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

