# Write a program that plays Rock, Paper, Scissors against the user.

VALID_CHOICES = %w[rock paper scissors spock lizard].freeze
RESULTS_MESSAGES = ['You won!', 'Computer won!', "It's a tie!"].freeze
# Program accepts full word or single letter selections.
USER_INPUTS = { 'rock' => 'rock', 'r' => 'rock', 'paper' => 'paper',
                'p' => 'paper', 'scissors' => 'scissors', 's' => 'scissors',
                'spock' => 'spock', 'k' => 'spock', 'lizard' => 'lizard',
                'l' => 'lizard' }.freeze

# Method to pull the correct victory message based on determine winner method.
def display_result(choice1, choice2)
  prompt(RESULTS_MESSAGES[determine_winner(choice1, choice2)])
end

# Method which compares the choices and outputs the index of the correct victory
# message from the RESULTS_MESSAGES array.
def determine_winner(choice1, choice2)
  result = (VALID_CHOICES.index(choice1) - VALID_CHOICES.index(choice2)) % 5
  case result
  when 1 then 0
  when 3 then 0
  when 2 then 1
  when 4 then 1
  when 0 then 2
  end
end

# Method for upating the score after a round
def update_score(score_ary, choice1, choice2)
  case determine_winner(choice1, choice2)
  when 0 then score_ary[0] += 1
  when 1 then score_ary[1] += 1
  end
end

# Method for displaying the scoreboard after a round
def display_current_score(score_ary)
  if score_ary.include?(3)
    prompt("Final score >> Player: #{score_ary[0]} - Computer: #{score_ary[1]}")
  else
    prompt("Current score >> Player: #{score_ary[0]} - Computer: #{score_ary[1]}")
  end
end

# Method for displaying the grand winner (first to three points)
def display_grand_winner(score_ary)
  prompt('You are the grand winner!') if score_ary[0] == 3
  prompt('The computer is the grand winner!') if score_ary[1] == 3
end

# Method for displaying outputs more clearly with => at the beginning.
def prompt(message)
  puts("=> #{message}")
end

# Main program
loop do
  choice = ''
  score = [0, 0]
  prompt('First to three points wins!')
  # Loop will continue until one player reaches 3 points.
  while score[0] < 3 && score[1] < 3
    # User choice validation loop
    loop do
      prompt('Choose one: rock (r), paper (p), scissors (s), spock (k), lizard (l)')
      user_input = gets.chomp.downcase
      choice = USER_INPUTS[user_input]

      break if VALID_CHOICES.include?(choice)

      prompt("That's not a valid choice.")
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    # display_result in turn calls determine_winner on the choices
    display_result(choice, computer_choice)

    # Update score array and display current score
    update_score(score, choice, computer_choice)
    display_current_score(score)
  end

  display_grand_winner(score)
  # Option for user to start a new game or terminate the program
  prompt('Do you want to play again?')
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt('Thank you for playing. Goodbye!')
