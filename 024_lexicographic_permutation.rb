N = 10
elements = (0...N).to_a
current = 1000000 - 1
result = []

def fac(n)
  return 1 if n <= 1
  (1..n).inject(&:*)
end

N.times do |i|
  f = fac(N - i - 1)
  j = current / f
  current = current % f
  result << elements.delete_at(j)
end

puts result.join

# 012 021 102 120 201 210
