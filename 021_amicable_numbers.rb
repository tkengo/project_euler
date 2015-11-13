require './libs/integer'

def amicable_number?(x)
  s1 = x.divisors.inject(&:+)
  s2 = s1.divisors.inject(&:+)

  x == s2 && s1 != s2
end

amicable_numbers = []
(220..10000).each do |i|
 amicable_numbers << i if amicable_number?(i)
end

puts amicable_numbers.inject(&:+)
