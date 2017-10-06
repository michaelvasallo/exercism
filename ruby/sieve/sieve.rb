class Sieve
  def initialize limit
    @limit = limit
    @range = (2..limit).to_a
  end

  def primes
    @range.each do |number|
      (number * 2).step(@limit, number) do |multiple|
        @range.delete(multiple)
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end