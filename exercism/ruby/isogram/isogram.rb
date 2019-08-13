require 'byebug'

class Isogram
  def self.isogram?(input)
    striped_input = input.gsub(/[^0-9a-zA-Z]/, '').downcase.chars
    striped_input.uniq == striped_input
  end
end