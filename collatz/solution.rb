class Collatz

  attr_reader :starting

  def initialize(starting)
    @starting = starting
  end

  def sequence
    @sequence ||= compute_sequence
  end

  def compute_sequence
    num = starting
    seq = []
    until num == 1
      seq.push num
      num = num % 2 == 0 ? even_mod(num) : odd_mod(num)
    end
    seq.push num
    seq
  end

  private

  def even_mod(num)
    num / 2
  end

  def odd_mod(num)
    3 * num + 1
  end

end


def ans
  hash = {}
  (1..1000000).to_a.each do |num|
    count = Collatz.new(num).sequence.count
    hash[count.to_s.to_sym] = num
  end
  hash
end
