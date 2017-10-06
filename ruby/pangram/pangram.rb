class Pangram
  def self.pangram? phrase
    (?A..?Z).all? { |letter| phrase.upcase.index(letter) }
  end
end

module BookKeeping
  VERSION = 5
end