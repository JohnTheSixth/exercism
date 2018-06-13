class Prime

  def self.nth(num)
    raise ArgumentError if num == 0

    prime = 2

    until num == 0
      num -= 1 unless (2..Math.sqrt(prime)).any? { |i| prime % i == 0 }
      prime += 1
    end

    return prime - 1
  end

end

module BookKeeping
  VERSION = 1
end
