class Raindrops
  VERSION = 1
  def self.convert(number)
    arr = []
    currentNumber = number
    divisor = 2
    while divisor < currentNumber
      if currentNumber % divisor == 0
        arr.push(divisor)
        currentNumber = currentNumber / divisor
        divisor = 2
      else
        divisor += 1
      end
    end
    arr.push(currentNumber)
    arr = arr.uniq
    ret = ""

    i = 0
    while i < arr.length
      if arr[i] == 3
        ret += 'Pling'
      elsif arr[i] == 5
        ret += 'Plang'
      elsif arr[i] == 7
        ret += 'Plong'
      end
      i += 1
    end
    if ret == ""
      ret = "#{number}"
    end
    ret
  end
end
