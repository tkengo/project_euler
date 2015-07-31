N = 4000000

# -----------------------
# Normal method
# -----------------------
def fibonacci(n1, n2, sum)
  n3 = n1 + n2
  sum += n3 if n3.even?
  if n3 > N
    sum
  else
    fibonacci(n2, n3, sum)
  end
end

puts fibonacci(0, 1, 0)

# -----------------------
# More efficiently method
# -----------------------
def fibonacci_efficiently(n1, n2, sum)
  n3 = n1 + n2
  n4 = n2 + n3
  n5 = n3 + n4

  if n4 > N
    sum
  else
    sum += n4
    fibonacci_efficiently(n4, n5, sum)
  end
end

puts fibonacci_efficiently(0, 1, 0)
