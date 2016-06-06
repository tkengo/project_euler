N = 1001

sum = 1
last = 1
(3..N).step(2).each do |n|
  4.times do
    last += n - 1
    sum += last
  end
end

puts sum
