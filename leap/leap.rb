class Year

  VERSION = 1

  def self.leap?(n)
    if(n % 4 == 0)
      return ((n % 100 != 0) || (n % 400 == 0))
    else
      return false
    end
  end
end