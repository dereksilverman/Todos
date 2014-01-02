require 'debugger'

#Let's make an object that behaves like a hash today!
 
#I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.
 
#For example
 
#obj = {:blake => "the best"}
#obj["blake"] #=> "the best"
 
#I'd like to be able to set values in our fake hash.
#I'd like to be able to find all values that have keys beginning with the letter a.
#I'd like to be able to get all the keys in the hash in a descending alphabetized array.
 
class FakeHashWrapper
	attr_accessor :hash

	def initialize
		@hash = nil
	end


	def self.find_keys(hash)
		hash.each do |key, value|
			value
		end
	end

	def self.sorted(hash)
		array = []
		hash.each do |key, value|
			key
			array << key
		end
		array.sort!
	end

#	def letter_a
#       values = []
#		@hash.keys.each do |key|
#			   if key.to_s[0] == "a"
#			   values << @hash[key]
#			end
#		end
#		values
#	end

#

	
 def set_value(key, val)
 	@hash[key] = val
end


end


hash1 = FakeHashWrapper.new
hash1 = {"derek" => 100, "sally" => 200, "amy" => 400}
FakeHashWrapper.find_keys(hash1)
FakeHashWrapper.sorted(hash1)
puts hash1.set_value("derek", 999)
hash2 = {"derek" => 100, "sally" => 200}

## def[](key) 
#hash[key.to_sym]
#end


