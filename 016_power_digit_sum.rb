N = 1000

puts (2 ** N).to_s.split('').map(&:to_i).inject(&:+)
