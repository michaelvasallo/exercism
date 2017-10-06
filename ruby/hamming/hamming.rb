class Hamming
  def self.compute strand_a, strand_b
    raise ArgumentError if strand_a.size != strand_b.size

    strand_a.chars.zip(strand_b.chars).count { |a,b| a != b }
  end
end

module BookKeeping
  VERSION = 3
end