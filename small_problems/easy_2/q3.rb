# Tip calculator

# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the tip
# and the total amount of the bill.

puts 'What is the bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
tip_percent = gets.chomp.to_f

tip = bill * tip_percent / 100
total = bill + tip

puts format("The tip is $%.2f\n", tip)
puts format("The total is $%.2f\n", total)