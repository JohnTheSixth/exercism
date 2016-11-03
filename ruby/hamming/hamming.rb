class Hamming

  def self.compute(one, two)
    self.compare(one, two) unless self.different_strings(one, two)
  end

  def self.compare(one, two)
    control, compare, distance = one.split(//), two.split(//), 0
    control.each_with_index { |v, i| distance += 1 if compare[i] != v }

    distance
  end

  def self.different_strings(one, two)
    if one.length != two.length then raise ArgumentError else false end
  end

end

module BookKeeping
  VERSION = 3
end
