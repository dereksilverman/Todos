def decode(joined_password)
  joined_password.gsub!("ashley", " ")
  puts joined_password
  joined_password.gsub!("blake", "e")
  puts joined_password
  new_password_array = joined_password.split(" ")
  puts new_password_array
  password_array = []
  password_array[0] = new_password_array[2]
  password_array[1] = new_password_array[1]
  password_array[2] = new_password_array[0]
  pass_as_string = password_array.join("_")
  password = pass_as_string.to_sym
  password
end

puts decode("intblakernblaketsashleythblakeashleyall")