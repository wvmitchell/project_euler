class Powers

  def self.sum_to(num=1)
    (1..num).inject do |sum, num|
      sum + num ** num
    end
  end

end
