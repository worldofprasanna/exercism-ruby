require 'byebug'

class Isogram
  def self.isogram?(input)
    output = {}
    input.gsub(/[^0-9a-zA-Z]/, '').downcase.chars.each {|val|
      output[val] ||= 0
      output[val] += 1
    }
    output.values.none? {|v| v > 1}
  end
end