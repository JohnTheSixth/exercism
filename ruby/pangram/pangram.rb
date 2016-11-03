ALPHABET = ('a'..'z').to_a

class Pangram
  def self.is_pangram?(phrase)
    (ALPHABET - phrase.downcase.chars).empty?
  end
end

module BookKeeping
  VERSION = 2
end
