class Hamming
  def self.compute(first, second)
    raise ArgumentError if first.length != second.length
    result = 0
    first.each_char.with_index {|c, index| 
      result += 1 if second[index] != c
    }
    result
  end
end