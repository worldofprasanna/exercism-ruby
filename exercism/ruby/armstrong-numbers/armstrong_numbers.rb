class ArmstrongNumbers
  def self.include?(input)
    arr = input.to_s.chars.map(&:to_i)
    length = arr.length
    input == arr.reduce(0) {|acc, v| acc += v ** length }
  end
end