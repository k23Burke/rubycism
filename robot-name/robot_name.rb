class Robot
  def initialize
    newName()
  end

  def name
    @name
  end

  def reset
    newName()
  end

  def newName
    @name = ''
    2.times do
      @name += (('A'..'Z').to_a[rand(26)])
    end
    3.times do
      @name += rand(9).to_s
    end
  end

end