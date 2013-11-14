secret = "Captain Moon America"
puts secret

reversed_string = secret.reverse
gsubAbang_string = reversed_string.gsub("a","!")
squeeze_string = gsubAbang_string.squeeze("o")

puts "Here is your encryped code:"
puts squeeze_string
