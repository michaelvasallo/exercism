class Squares
  def initialize count
    @numbers = 1..count
  end

  def square_of_sum
    @numbers.reduce(:+)**2
  end

  def sum_of_squares
    @numbers.reduce(0) { |sum, n| sum += n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end