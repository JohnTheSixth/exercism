class Sieve

  def initialize(range_limit)
    @limit = range_limit
  end

  def primes
    range = (2..@limit).to_a
    range.each_with_object([]) do |current_number, primes|
      primes << current_number
      range.reject! { |number| number % current_number == 0 and number > current_number }
    end
  end

end

module BookKeeping
  VERSION = 1
end
