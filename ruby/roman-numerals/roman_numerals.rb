class Fixnum

  ROMAN_CONVERSION = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def to_roman
    int = self
    num = ''

    ROMAN_CONVERSION.keys.each do |k|
      while int - k >= 0
        num += ROMAN_CONVERSION[k]
        int = int - k
      end
    end
    num
  end

end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
