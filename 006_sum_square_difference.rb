N = 100

# -----------------------
# Normal method
# -----------------------
def sum_of_squares(n)
  (1..n).inject(0){|sum, i| sum + i * i }
end

def squares_of_sum(n)
  v = (1..n).inject(0){|sum, i| sum + i }
  v * v
end

puts squares_of_sum(N) - sum_of_squares(N)

# -----------------------
# More efficiently method
# -----------------------
def sum_of_squares_efficiently(n)
  (n * (n + 1) * (2 * n + 1)) / 6.0
end

def squares_of_sum_efficiently(n)
  v = (n * (n + 1)) / 2.0
  v * v
end

puts squares_of_sum_efficiently(N) - sum_of_squares_efficiently(N)
