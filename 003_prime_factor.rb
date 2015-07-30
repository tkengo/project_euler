def prime_factor(n)
  pf = []
  sqrt_n = Math.sqrt n
  i = 2
  while i < sqrt_n
    if n % i == 0
      pf << i
      n /= i
    else
      i += 1
    end
  end
  pf
end

puts prime_factor(600851475143).max
