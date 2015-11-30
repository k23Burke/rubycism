class Robot
  def initialize
    @name = newName()
  end

  def newName
    l = 2.times(('A'..'Z').to_a[Random.rand(26)])
    puts l
  end

end