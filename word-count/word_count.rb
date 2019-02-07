class Phrase
  def initialize(str)
    @words = str.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) do |word, word_hash|
      word_hash[word] += 1
    end
  end
end
