# Greeting a User

# Write a program that will ask for user's name. The program will then greet the 
# user. If the user writes "name!" then the computer yells back to the user.

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name[-1] = ''
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}"
end

# If the user includes ! at the end of the entry, the conditional statement
# removes the ! and upcases the name in the output. Otherwise, it just outputs
# 'Hello' and the user's name.