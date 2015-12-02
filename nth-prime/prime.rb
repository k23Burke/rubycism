# class Prime
#   FIRSTPRIME = 2

#   def initialize
#     @prime_array = [FIRSTPRIME]
#   end

#   def self.nth (n)
#     if (n < 1)
#       raise ArgumentError
#     end
#     currentNth = 1
#     currentNumber = FIRSTPRIME + 1
#     while currentNth < n
#       currentPrime += 1
#       if(checkIfPrime(currentPrime))
#         currentNth += 1
#         @prime_array.push(currentPrime)
#       end
#     end
#     return @prime_array[n]
#   end

#   def checkIfPrime(n)
#     ret = true
#     (2..n).each do |i|
#       if((i % n) % 1 != 0)
#         ret = false
#       end
#     end
#     ret
#   end

# end
