class HelloWorld
  def self.hello(name = nil)
    if name.nil?
      ret = "Hello, World!"
    else
      ret = "Hello, #{name}!"
    end
    ret
  end
end
