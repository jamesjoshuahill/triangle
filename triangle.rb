class Triangle
	attr_accessor :s1, :s2, :s3
	def initialize(side1, side2, side3)
		@s1 = side1
		@s2 = side2
		@s3 = side3
		raise ArgumentError.new(
			'Cannot create an invalid triangle.'
		) if not is_valid_triangle?
	end
	
	def is_valid_triangle?
		sorted = sort_sides
		(sorted[0] + sorted[1]) > sorted[2] ? true : false
	end

	def sort_sides
		[@s1, @s2, @s3].sort
	end

	def is_isosceles?
		[@s1, @s2, @s3].uniq.size == 2 ? true : false
	end

	def is_equilateral?
		[@s1, @s2, @s3].uniq.size == 1 ? true : false
	end

	def is_scalene?
		[@s1, @s2, @s3].uniq.size == 3 ? true : false
	end

	def type
    # if is_valid_triangle?
    	return "isosceles" if is_isosceles?
    	return "equilateral" if is_equilateral?
    	"scalene"
    # else
    # 	return 'not valid triangle'
    # end
	end

	def show_triangle_attributes
			"Triangle with sides #{@s1},#{@s2},#{@s3} is #{type}"
	end
end

triangle = Triangle.new(2,3,4)
puts triangle.show_triangle_attributes
triangle.s1, triangle.s2, triangle.s3 = 1, 2, 2
puts triangle.show_triangle_attributes
triangle.s1, triangle.s2, triangle.s3 = 500, 500, 500
puts triangle.show_triangle_attributes