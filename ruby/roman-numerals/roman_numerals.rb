module RomanNumerable
  CONVERSIONS = {
     M: 1000,
    CM: 900,
     D: 500,
    CD: 400,
     C: 100,
    XC: 90,
     L: 50,
    XL: 40,
     X: 10,
    IX: 9,
     V: 5,
    IV: 4,
     I: 1
  }

  def to_roman
    input = self
    output = ''
    CONVERSIONS.each do |roman, arabic|
      while input >= arabic
        input -= arabic
        output << roman.to_s
      end
    end
    output
  end
end

class Integer
  include RomanNumerable
end

module BookKeeping
  VERSION = 2
end
