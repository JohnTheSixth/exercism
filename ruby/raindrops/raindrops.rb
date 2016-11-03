class Raindrops

  RAINDROPS = { 3 => "Pling", 5 => "Plang", 7 => "Plong" }

  def self.convert(num)
    rain = RAINDROPS.each_with_object([]) { |(k, v), array| array << v if num % k == 0 }
    rain.length == 0 ? num.to_s : rain.join("")
  end

end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
