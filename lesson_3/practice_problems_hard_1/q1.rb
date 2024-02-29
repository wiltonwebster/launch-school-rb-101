# Predict what will happen when greeting is invoked in this code:

if false
  greeting = "hello world"
end

greeting

# In the if statement, the conditional is false, so the branch that initializes
# greeting does not execute. Therefore invoking greeting will raise an error,
# since no variable or method in scope with that name has been initialized.

# ^ Incorrect.

# The solution clarifies that even though the if statement does not execute the
# initialization of greeting to "hello world", it still initializes greeting.
# Thus, it has a value of nil, rather than no value. When greeting is invoked on
# the last line of the code, it has a value (nil) so no exeception is thrown.