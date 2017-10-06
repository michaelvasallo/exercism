class Raindrops
  def self.convert number
    string = String.new
    string << 'Pling' if number.modulo(3).zero?
    string << 'Plang' if number.modulo(5).zero?
    string << 'Plong' if number.modulo(7).zero?
    string.empty? ? number.to_s : string
  end
end

module BookKeeping
  VERSION = 3
end