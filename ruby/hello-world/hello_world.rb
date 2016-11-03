class HelloWorld

  def self.hello(*name)
    person = name[0] || "World"
    return "Hello, #{person}!"
  end

end
