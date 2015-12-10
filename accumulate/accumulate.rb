class Array
  def accumulate
    ret = []
    each do |item|
      ret << (yield item)
    end
    ret
  end

end