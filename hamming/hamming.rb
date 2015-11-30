class Hamming
  VERSION = 1
  def self.compute(dna1, dna2)
    ret = 0
    if dna1.length == dna2.length
      i = 0
      while i < dna1.length
        if dna1[i] != dna2[i]
          ret += 1
        end
        i += 1
      end
    else
      raise ArgumentError
    end
    ret
  end
end
