class Squares

  def initialize(num)
    @range = 0..num
  end

  def square_of_sum
    sum = 0
    @range.each { |n| sum += n }
    sum ** 2
  end

  def sum_of_squares
    sum = 0
    @range.each { |n| sum += (n ** 2) }
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 3
end
