M = []
10.times do |i|
  M << i ** 5
end

fifth_powers = []
(2..354294).to_a.each do |i|
  sum = i.to_s.each_char.inject(0) do |s, j|
    s += M[j.to_i]
  end
  fifth_powers << i if i == sum
end

puts fifth_powers.inject(:+)
