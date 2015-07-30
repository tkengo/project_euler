def smallest_multiple(n)
  v = n
  while true
    all_divided = true
    n.times do |i|
      if v % (i + 1) != 0
        all_divided = false
        break
      end
    end

    break if all_divided
    v += n
  end
  v
end

puts smallest_multiple(20)
