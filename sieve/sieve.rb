class Sieve
  attr_reader :primes

  def initialize(n)
    @number = n
    @primes = []
    build_primes
  end

  def build_primes
    @primes = Array.new(@number+1)

    (2..@number).each do |n|
      @primes[n] = n
    end


    # numbers with multiples less than n
    (2..(Math.sqrt(@number)).ceil).each do |i|
      if @primes[i]
        # remove all multiples of the prime
        (i**2..@number).step(i).each do |x|
          @primes[x] = nil
        end
      end
    end
    @primes = @primes.compact
  end

end