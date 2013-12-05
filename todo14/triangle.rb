class Triangle
	attr_accessor :one, :two, :three

	def initialize (side1, side2, side3)
		@one = side1
		@two = side2
		@three = side3
	end
	
	def kind
		
		if not_valid?
			raise TriangleError
		elsif one == two && two == three
			:equilateral
	
		elsif one == two && two != three
			:isosceles

		elsif one == three && three != two
			:isosceles

		elsif two == three && three != one
			:isosceles

		elsif one != two && two != three
			:scalene

		end
	end

	def not_valid?
		a =(one + two) <= three
	    b =(one + three) <= two
		c = (two + three) <= one
		one <= 0 || two <= 0 || three <= 0 || a == true || b == true || c == true

	end
end


class TriangleError < StandardError
  "This is not a triangle."
end


#tri1 = Triangle.new(2,2,2)
#tri1.kind