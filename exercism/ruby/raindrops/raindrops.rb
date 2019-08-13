class Raindrops
  def self.convert(input)
    output = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.map{|k, v| v if (input % k).zero? }.join
    return input.to_s if output.empty?
    output
  end
end