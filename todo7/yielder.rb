def my_first_each(array)
	yield array[0]
end

array1 = [1,2,3]
my_first_each(array1) {|first_element| puts first_element}
