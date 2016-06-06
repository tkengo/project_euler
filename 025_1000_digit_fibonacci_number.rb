N = 1000

n1  = 1
n2  = 1
seq = 2

while true
  n1, n2 = n2, n1 + n2
  seq += 1
  if n2.to_s.size == N
    puts seq
    break
  end
end
