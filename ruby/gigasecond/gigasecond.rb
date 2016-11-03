class Gigasecond

  def self.from(time)
    seconds = time.to_i + 10**9
    Time.at(seconds).utc
  end

end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
