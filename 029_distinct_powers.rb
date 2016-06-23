A = (2..100)
B = (2..100)

hash = {}
count = 0
A.each do |a|
  B.each do |b|
    ab = a ** b
    count += 1 unless hash[ab]
    hash[ab] = true
  end
end

puts count
