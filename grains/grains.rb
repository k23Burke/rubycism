class Grains

  def self.total
    total = 0
    (1..64).each do |i|
      total += 2**(i-1)
    end
    total
  end

  def self.square(n)
    2**(n-1)
  end
end
