# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# The mess_with_it method does not mutate its argument, so it returns 50 to be
# stored in new_answer, but answer remains equal to 42. Thus, p answer - 8 will
# evaluate to p 34, and 34 will be printed to the console.