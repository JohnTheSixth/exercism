class Complement

  RNA = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" }

  def self.of_dna(dna)
    rna_strand = []

    dna.split(//).each do |d|
      if RNA[d] == nil then return "" else rna_strand << RNA[d] end
    end

    rna_strand.join()
  end

end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
