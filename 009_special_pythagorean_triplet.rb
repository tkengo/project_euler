N = 1000

def pythagorean_triplet(n)
  catch :loop do
    (1..n).each do |a|
      ((a + 1)..n).each do |b|
        c = Math.sqrt(a * a + b * b)
        if a + b + c == n
          puts a * b * c
          throw :loop
        end
      end
    end
  end
end

pythagorean_triplet(N)
