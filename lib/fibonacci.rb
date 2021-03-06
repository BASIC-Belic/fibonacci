# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)

  raise ArgumentError if (n == nil) || (n < 0)
  return n if n <= 1

  i = 2
  curr = 1
  last = 1
  while i < n
    temp = curr
    curr += last
    last = temp
    i += 1
  end
  return curr
end
