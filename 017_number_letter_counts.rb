LETTER_COUNTS = [
  0, # 0  dummy (zero)
  3, # 1  one
  3, # 2  two
  5, # 3  three
  4, # 4  four
  4, # 5  five
  3, # 6  six
  5, # 7  seven
  5, # 8  eight
  4, # 9  nine

  3, # 10 ten
  6, # 11 eleven
  6, # 12 twelve
  8, # 13 thirteen
  8, # 14 fourteen
  7, # 15 fifteen
  7, # 16 sixteen
  9, # 17 seventeen
  8, # 18 eighteen
  8  # 19 nineteen
]
TWENTY   = 6
THIRTY   = 6
FORTY    = 5
FIFTY    = 5
SIXTY    = 5
SEVENTY  = 7
EIGHTY   = 6
NINETY   = 6
HUNDRED  = 7
THOUSAND = 8
AND      = 3

ones_place_sum = LETTER_COUNTS[0, 10].inject(&:+)
under_hundred_sum = ones_place_sum +
                    LETTER_COUNTS[10, 10].inject(&:+) +
                    TWENTY  * 10 + ones_place_sum +
                    THIRTY  * 10 + ones_place_sum +
                    FORTY   * 10 + ones_place_sum +
                    FIFTY   * 10 + ones_place_sum +
                    SIXTY   * 10 + ones_place_sum +
                    SEVENTY * 10 + ones_place_sum +
                    EIGHTY  * 10 + ones_place_sum +
                    NINETY  * 10 + ones_place_sum

sum = under_hundred_sum
(1..9).each do |i|
  sum += (LETTER_COUNTS[i] + HUNDRED) * 100 + AND * 99 + under_hundred_sum
end
sum += LETTER_COUNTS[1] + THOUSAND

puts sum
