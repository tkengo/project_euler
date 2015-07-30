def fibonacci(n1, n2, sum)
  n3 = n1 + n2
  puts n3
  sum += n3 if n3 % 2 == 0
  if n3 > 4000000
    sum
  else
    fibonacci(n2, n3, sum)
  end
end

puts fibonacci(1, 1, 0)
