def divisor(n)
  divisor = 1
  limit = Math.sqrt(n).to_i

  (2..limit).each do |i|
    power = 0
    while n % i == 0
      n /= i
      power += 1
    end

    divisor *= power + 1
  end

  divisor *= 2 if n > 1
  divisor
end

def triangular(max)
  tri_num = 0
  index = 0

  while true
    index += 1
    tri_num += index

    return tri_num if divisor(tri_num) > max
  end
end

puts triangular(500)
