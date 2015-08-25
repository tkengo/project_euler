def collatz(n)
  return @collatz << n if n == 1

  @collatz << n
  if n % 2 == 0
    collatz(n / 2)
  else
    collatz(n * 3 + 1)
  end
end

longest_chain = 0
longest_chain_number = 0
1000000.times do |i|
  @collatz = []
  start = i + 1
  collatz(start)
  if longest_chain < @collatz.length
    longest_chain = @collatz.length
    longest_chain_number = start
  end
end

puts longest_chain_number
