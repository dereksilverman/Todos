# To explore the confusion around the results object we get back from queries using the mysql2 gem...
 
# Create an object that behaves like an array but is NOT an array. Define the each, first and indexing methods on it.
 
# I should get the same result if i do
 
# container = []
# [1,2,3].each do |element|
#   container << element + 1
# end
 
# as if i use your class like so...
 
# fakearray = FakeArray.new
# container = []
# fakearray.each do |element|
#   container << element + 1
# end
 
# Note: I've intentionally omitted a step here where you'd have to somehow tell your class that were using an array of 1,2,3
 
class FakeArray

  def initialize
  	@info = ["hero","fearless"]
  end
 
  def each
  	@info.each do |element|
  		yield element if block_given? 
  	end
  end
 
  def print_stuff
  	yield
  end


  def first
    @info[0]
  end
 
  def []
  	new_array = []
  	@info.each do |element|
  		new_array << element unless new_array.include? element
  	end
  	new_array 
  end
 
end

test = FakeArray.new
test.each {|element| puts element.upcase}
test.print_stuff {puts "stuff"}
puts test.first
fear = test.[]
puts fear
