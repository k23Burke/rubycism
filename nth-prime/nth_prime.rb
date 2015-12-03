class Prime

  FIRSTPRIME = 2

  def self.nth (n)
    @prime_array = [FIRSTPRIME]
    if (n < 1)
      raise ArgumentError
    end
    currentNth = 1
    currentNumber = FIRSTPRIME
    while currentNth < n do
      currentNumber += 1
      if(checkIfPrime(currentNumber, @prime_array))
        currentNth += 1
        @prime_array.push(currentNumber)
      end
    end
    return @prime_array[n-1]
  end

  private

    def checkIfPrime(n, array)
      ret = true
      array.each do |i|
        if((n % i) == 0)
          ret = false
        end
      end
      ret
    end

end
