class Fixnum

  def to_roman
    int = self
    str = ''

    if int > 1000

    elsif int > 100
    elsif int > 10
    else

    int % 5 == 0
  end

private

  def thousands()
  end

  def hundreds()
  end

  def tens()
  end

end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
