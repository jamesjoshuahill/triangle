class Triangle
	attr_accessor :si, :s2, :s3
	def initialise(side1, side2, side3)
		@s1 = side1
		@s2 = side2
		@s3 = side3
	end
	
	def is_valid_triangle?(s1,s2,s3)
		sorted = sort(s1,s2,s3)
		(sorted[0] + sorted[1]) > sorted[2] ? true : false
	end

	def sort(s1,s2,s3)
		[s1,s2,s3].sort
	end

	def is_isosceles?(s1,s2,s3)
		[s1,s2,s3].uniq.size == 2 ? true : false
	end

	def is_equilateral?(s1,s2,s3)
		[s1,s2,s3].uniq.size == 1 ? true : false
	end

	def is_scalene?(s1,s2,s3)
		[s1,s2,s3].uniq.size == 3 ? true : false
	end

	def type?(s1, s2, s3)
    if is_valid_triangle?(s1,s2,s3)
    	if is_isosceles?(s1,s2,s3)
    		return "isosceles"
    	elsif is_equilateral?(s1,s2,s3)
    		return "equilateral"
    	else 
    		return "scalene"
    	end
    else
    	return 'not valid triangle'
    end
	end

	def print_type(s1, s2, s3)
    puts type?(s1, s2, s3)
	end
end

triangle = Triangle.new
triangle.print_type(2,3,2)

