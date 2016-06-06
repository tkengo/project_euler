d = 1000
len = 0;

(1..d).to_a.reverse.each do |i|
  break if len >= i

  remainders = Array.new(i, 0)
  v = 1
  pos = 0

  while remainders[v] == 0 && v != 0
    remainders[v] = pos
    v = (v * 10) % i
    pos += 1
  end

  len = pos - remainders[v] if pos - remainders[v] > len
end

puts len + 1
