# Below is a Fibonacci Calculator program with a bug.

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# Something about the limit variable is causing an error. What is wrong with the
# program and how can it be resolved?

# This program will throw an error when it searches for limit in the method 
# definition. Methods create their own scopes which cannot see outer scopes, so
# the method will be unable to match limit to anything it its scope. In order to
# fix this, the initialization of limit should be moved inside the method
# definition, or limit should be passed into the method as an argument.