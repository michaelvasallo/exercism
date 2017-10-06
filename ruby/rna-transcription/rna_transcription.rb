class Complement
  DNA = 'GCTA'
  RNA = 'CGAU'

  def self.of_dna dna
    return '' unless /^[#{DNA}]+$/.match dna

    dna.tr DNA, RNA
  end
end

module BookKeeping
  VERSION = 4
end