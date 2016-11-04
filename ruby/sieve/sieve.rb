class Sieve

  def initialize(range_limit)
    @limit = range_limit
  end

  def primes
    range = (2..@limit).to_a
    primes = []

    range.each do |number|
      primes << number

      range.reject! do |composite|
        composite % number == 0 and composite > number
      end
    end

    primes
  end

end

module BookKeeping
  VERSION = 1
end
