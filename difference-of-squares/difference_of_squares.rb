class Squares
  attr_reader :square_of_sums
  attr_reader :sum_of_squares
  attr_reader :difference
  VERSION = 1
  def initialize (n)
    @number = n
    @square_of_sums = square()
    @sum_of_squares = sum()
  end

  def square
    i = 1
    total = 0
    while i <= @number
      total += i
      i += 1
    end
    @square_of_sums = total**2
  end

  def sum
    i = 1
    total = 0
    while i <= @number
      total += i**2
      i += 1
    end
    @sum_of_square = total
  end

  def difference
    @square_of_sums - @sum_of_square
  end
end
