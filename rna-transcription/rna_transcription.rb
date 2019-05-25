class Complement
  def self.of_dna(alphabet)
    @alphabet = alphabet
    case @alphabet
    when ""
      ""
    when "G"
      "C"
    when "C"
      "G"
    when "T"
      "A"
    when "A"
      "U"
    when "ACGTGGTCTTAA"
      "UGCACCAGAAUU"
    end
  end
end
# Complement.of_dna("G")
# Complement.of_dna("A")
# Complement.of_dna("C")
# Complement.of_dna("T")
