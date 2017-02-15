def primes(n)
  primes = (2..n).to_a
  last = Math.sqrt(n).ceil

  last.times do |i|
    base = primes[i]
    not_primes = primes.select{|p| p > base && p % base == 0 }
    primes -= not_primes
  end

  primes
end

def f(n, a, b)
  n * n + n * a + b
end

class Integer
  def prime?
    v = self.abs
    last = Math.sqrt(v).ceil
    ret = (2..last).each do |i|
      break if v % i == 0
    end
    !ret.nil?
  end
end

max_prime = 0
max_pair = [ 0, 0 ]

primes(1000).each do |b|
  [ 1, -1 ].each do |sign|
    -999.step(999, 2).each do |a|
      n = 0
      while (value = f(n, a, sign * b)).prime?
        if max_prime < value
          max_prime = value
          max_pair = [ a, sign * b ]
        end
        n += 1
      end
    end
  end
end

puts max_pair.first * max_pair.last
