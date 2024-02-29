def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What is the return value of the following method invocation?

bar(foo)

# Calling bar(foo) enters sets param in the bar method equal to the return value
# of the foo method. The foo method takes one argument, which is set to "no" by
# default if no argument is given. However, the method itself always returns
# "yes", so bar(foo) is equivalent to bar("yes"). The param == "no" condition in
# the bar method therefore evaluates to false, which returns "no".