N = 2000000

def prime_list(n)
  base = (3..n).step(2).to_a
  prime_list = []

  sqrt = Math.sqrt(n).to_i
  (3..sqrt).step(2).each do |i|
    next unless base.include?(i)
    prime_list << i
    base.select!{|v| v % i != 0 }
  end

  prime_list.unshift(2).concat(base)
end

puts prime_list(N).inject(:+)
