class Binary
  VERSION = 1

  def initialize n
    if !is_number?(n)# || (n[0] == "0" && n.length > 1)
      raise ArgumentError
    else
      @binary = n
    end
  end

  def to_decimal
    total = 0
    nth_char = 0
    length = @binary.length - 1
    while length >= 0
      total += @binary[nth_char].to_i*(2**length)
      nth_char += 1
      length -= 1
    end
    total
  end

  def is_number? string
    true if Float(string) rescue false
  end

end