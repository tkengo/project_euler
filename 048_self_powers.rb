def self_powers(n, digits)
  digits = 10 ** digits
  sum = 0
  (1..n).each do |i|
    powers = i
    (i - 1).times do
      powers = (powers * i) % digits
    end
    sum = (sum + powers) % digits
  end
  sum
end

puts self_powers(1000, 10)
