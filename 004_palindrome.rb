def palindrome_number?(v)
  v = v.to_s
  if v.length % 2 == 0
    palindrome = true
    (v.length / 2).times do |i|
      if v[i] != v[v.length - 1 - i]
        palindrome = false
        break
      end
    end
    return palindrome
  else
    return false
  end
end

def largest_palindrome
  max = 0
  (100..999).to_a.each do |n1|
    (100..999).to_a.each do |n2|
      v = n1 * n2
      max = [ max, v ].max if palindrome_number?(v)
    end
  end
  max
end

puts largest_palindrome
