require 'pry'

class Coins

  def self.types
    {
      two_pound: 200,
      pound: 100,
      fifty_pence: 50,
      twenty_pence: 20,
      ten_pence: 10,
      five_pence: 5,
      two_pence: 2,
      pence: 1,
    }
  end

  types.each do |type, value|
    define_singleton_method(type) do
      value
    end
  end

  def self.ways_to(num)
    count = 0
    (0..(num / two_pound)).each do |tP|
      a = tP * 200
      next if a > num
      (0..(num / pound)).each do |oP|
        b = oP * 100
        next if [a,b].inject(:+) > num
        (0..(num / five_pence)).each do |fip|
          c = fip * 50
          next if [a,b,c].inject(:+) > num
          (0..(num / twenty_pence)).each do |twtp|
            d = twtp * 20
            next if [a,b,c,d].inject(:+) > num
            (0..(num / ten_pence)).each do |tp|
              e = tp * 10
              next if [a,b,c,d,e].inject(:+) > num
              (0..(num / five_pence)).each do |fp|
                f = fp * 5
                next if [a,b,c,d,e,f].inject(:+) > num
                (0..(num / two_pence)).each do |twp|
                  g = twp * 2
                  next if [a,b,c,d,e,f,g].inject(:+) > num
                  (0..(num / pence)).each do |p|
                    next if [a,b,c,d,e,f,p].inject(:+) > num
                    sum = [a,b,c,d,e,f,p].inject(:+)
                    if sum == num
                      count += 1
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    count
  end

end
