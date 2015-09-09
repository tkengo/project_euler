N = 20

def v
  N + 1
end

def all
  v * v
end

def top?(n)
  n <= v
end

def left?(n)
  (n - 1) % v == 0
end

p = Array.new all, 1

(1..all).each do |i|
  next if top?(i) || left?(i)
  p[i] = p[i - 1] + p[i - v]
end

puts p.last
