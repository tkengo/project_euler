BASE = 1901
DAYS_OF_MONTH = [
  31, # January
  28, # February
  31, # March
  30, # April
  31, # May
  30, # June
  31, # July
  31, # August
  30, # September
  31, # October
  30, # November
  31  # December
]

sundays_count = 0
days_total = DAYS_OF_MONTH.inject(&:+) + 1
100.times do |i|
  DAYS_OF_MONTH.each_with_index do |days_count, m|
    sundays_count += 1 if days_total % 7 == 0
    days_total += days_count

    y = BASE + i
    next if m != 1 || y % 4 != 0 || (y % 100 == 0 && y % 400 != 0)
    days_total += 1
  end
end

puts sundays_count
