require 'byebug'

class ResistorColorDuo
  COLOR_MAPPER={
    'black' => '0',
    'brown' => '1',
    'red' => '2',
    'orange' => '3',
    'yellow' => '4',
    'green' => '5',
    'blue' => '6',
    'violet' => '7',
    'grey' => '8',
    'white' =>'9'
  }
  def self.value(input_arr)
    input_arr.reduce('') { |acc, val| acc + (COLOR_MAPPER[val] || '') }.to_i
  end
end