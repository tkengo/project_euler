require './libs/integer'

list = (1..28123).to_a

abundant_numbers = []
list.each do |i|
  abundant_numbers << i if i.abundant_number?
end

abundant_mixed_numbers = []
abundant_numbers.each do |i1|
  abundant_numbers.each do |i2|
    abundant_mixed_numbers << i1 + i2
  end
end

puts (list - abundant_mixed_numbers).inject(&:+)
