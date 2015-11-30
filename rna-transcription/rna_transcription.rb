class Complement
  VERSION = 2
  DNA = ['G','C','T','A']
  RNA = ['C','G','A','U']

  def self.of_dna(string)
    ret = ''
    i = 0
    while i < string.length
      if DNA.index(string[i])
        ret += RNA[DNA.index(string[i])]
      else
        raise ArgumentError
      end
      i += 1
    end
    ret
  end

  def self.of_rna(string)
    ret = ''
    i = 0
    while i < string.length
      if RNA.index(string[i])
        ret +=DNA[RNA.index(string[i])]
      else
        raise ArgumentError
      end
      i += 1
    end
    ret
  end
end
