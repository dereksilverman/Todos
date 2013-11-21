#Implement your own versions of collect and select
 
def my_collect(array)
	new_array = 0
	i = 0
	while i < self.length
		element = yield self[i]
		new_array << element
		i++
	end
	new_array
end
 
