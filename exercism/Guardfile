guard :shell do
  watch /(.*).rb$/ do |m|
    filename = m[1]
    if /.*_test/.match(filename)
      `ruby #{filename}.rb`
    else
      `ruby #{filename}_test.rb`
    end
  end
end