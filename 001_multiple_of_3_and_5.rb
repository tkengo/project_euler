M1 = 3
M2 = 5
N  = 1000

# -----------------------
# Normal method
# -----------------------
def multiple
  (1..N).inject(0) do |sum, i|
    if i % M1 == 0 || i % M2 == 0
      sum + i
    else
      sum
    end
  end
end

puts multiple

# -----------------------
# More efficiently method
# -----------------------
def geometric_series(d)
  l = N / d + 1
  (d * l * (l - 1)) / 2.0
end

def multiple_efficiently
  n1 = geometric_series M1
  n2 = geometric_series M2
  n3 = geometric_series M1 * M2

  n1 + n2 - n3
end

puts multiple_efficiently
