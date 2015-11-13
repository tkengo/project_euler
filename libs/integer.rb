class Integer
  def divisors
    limit = (Math.sqrt(self) + 0.5).floor

    divisor = []
    (1..limit).each do |i|
      divisor << i if self % i == 0
    end

    rest = []
    divisor.each do |i|
      rest << self / i unless i == 1
    end

    (divisor + rest).sort.uniq
  end

  def abundant_number?
    self < divisors.inject(&:+)
  end
end
