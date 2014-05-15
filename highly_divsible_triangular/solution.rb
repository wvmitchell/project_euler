class Integer

  def factors
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i|
      f << i
      f << self/i unless i == self/i
      f
    end.sort
  end

  def factor_count
    factors.count
  end

end

def triangle_num(num)
  (1..num).inject(:+)
end

triangle_num_index = 1
found = false
ans = 0
until found
  tri_num = triangle_num(triangle_num_index)
  if tri_num.factor_count > 500
    ans = tri_num
    found = true
  end
  triangle_num_index += 1
end

puts ans
