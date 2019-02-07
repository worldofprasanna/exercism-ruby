# Series
class Series
  def initialize(str)
    @str = str
  end

  def slices(n)
    raise ArgumentError if n > @str.length
    i=0
    arr=[]
    n -= 1
    while i < @str.length-n do
      arr << @str[i..i+n]
      i+=1
    end
    arr
  end
end