#Two different ways to define a method. 


class Array
	def make_list
		self.map.with_index { |item, index| "#{index+1}. #{item}"}
	end
end

#my_array = Array.new
#my_array = [3939,"3939333",333]
#puts my_array.make_list


def make_list array
	array.map.with_index { |item, index| "#{index+1}. #{item}"}
end


#puts make_list([3939,"3939333",333])