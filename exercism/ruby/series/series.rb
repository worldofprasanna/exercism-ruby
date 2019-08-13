# Series
class Series
  def initialize(str)
    @str = str
  end

  def slices(n)
    raise ArgumentError if n > @str.length
    @str.chars.map
    .with_index { |num, i| num + @str[i+1, n-1] }
    .select { |e| e.length == n }
  end
end