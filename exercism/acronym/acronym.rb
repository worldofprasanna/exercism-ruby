class Acronym
  def self.abbreviate(str)
    values = str.split(/\s|-/)
    values.map {|v| v[0]&.upcase }.join('')
  end
end