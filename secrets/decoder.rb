puts "What is your encypted code?"
insert_string = gets.chomp


squeeze_string = insert_string.insert(10,"o")
reverse_secret = squeeze_string.gsub("!","a")
secret = reverse_secret.reverse



puts "Here is your secret code:"
puts secret
