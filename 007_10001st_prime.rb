def search_prime(n)
  current = 3
  order = 1

  while true
    d = 3
    sqrt = Math.sqrt(current)

    is_prime = true
    while d <= sqrt
      if current % d == 0
        is_prime = false
        break
      end
      d += 2
    end

    order += 1 if is_prime
    break if order == n

    current += 2
  end
  current
end

puts search_prime(10001)
