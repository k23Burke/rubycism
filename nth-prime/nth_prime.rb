class Prime
  FIRSTPRIME = 2

  def nth (n)
    currentNth = 0
    currentPrime = FIRSTPRIME
    while curentPrime < n
    end
  end

  def checkIfPrime(n)
    ret = true
    (2..n).each do |i|
      if((i % n) % 1 != 0) do
        ret = false
      end
    end
    ret
  end

end
