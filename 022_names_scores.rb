open("files/p022_names.txt") do |f|
  names = f.gets.gsub('"', '').split(",").sort

  sum = 0
  names.each_with_index do |name, i|
    sum += (i + 1) * name.upcase.each_char.inject(0){|s, c| s + c.ord - 64 }
  end

  puts sum
end
