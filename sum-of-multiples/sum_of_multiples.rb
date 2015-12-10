class SumOfMultiples
  class << self
    def to n
      new(3, 5).to(n)
    end
  end

  def initialize *m
    @multiples = m
  end

  def to n
    t = 0
    (1..n-1).each do |i|
      already = false
      @multiples.each do |w|
        if  i % w == 0 && !already
          t += i
          already = true
        end
      end
    end
    t
  end

end