class Deli

	def initialize 
		@line = ["Derek", "Nikki", "Sabrina", "Henry", "Tanya"]
	end

	def take_a_number(customer)
		 
 		 @line << "#{customer}"	
	end

	def now_serving
		@line.shift
	end

	def update_number
		number = 1
		new_line = []
		@line.each do |item|
			new_line << "#{number}." + " #{item}"
			number += 1
		end
		new_line
	end

end

my_deli = Deli.new
my_deli.take_a_number("Peter")
my_deli.now_serving
my_deli.update_number

