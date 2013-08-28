require './triangle'

describe Triangle do
	it 'should have three sides' do
		triangle = Triangle.new(1, 2, 2)
		expect(triangle.s1).to eq 1
		expect(triangle.s2).to eq 2
		expect(triangle.s3).to eq 2
	end

	it 'should create a valid triangle' do
		triangle = Triangle.new(3, 3, 5)
		expect(triangle.is_valid_triangle?).to be_true
	end
  
  # it 'should know if it is not a valid triangle' do
 	#   triangle = Triangle.new(3, 3, 7)
 	#   expect(triangle.is_valid_triangle?).to be_false
  # end

  it 'should not create an invalid triangle' do
  	expect do
  		Triangle.new(1, 1, 5)
  	end.to raise_error(ArgumentError,
  		"Cannot create an invalid triangle.")
  end

	it 'should be able to sort the sides into ascending order' do
		triangle = Triangle.new(5, 3, 4)
		expect(triangle.sort_sides).to eq [3, 4, 5]
	end

	context 'should know if a triangle is' do
		it 'isoceles (with side values of 1, 2, 2)' do
			triangle = Triangle.new(1, 2, 2)
			expect(triangle.is_isosceles?).to be_true
		end

		it 'scalene with side values of 3, 4, 5' do
			triangle = Triangle.new(3, 4, 5)
			expect(triangle.is_scalene?).to be_true
		end

		it 'equilateral with side values of 1, 1, 1' do
			triangle = Triangle.new(1, 1, 1)
			expect(triangle.is_equilateral?).to be_true
		end
	end

	context 'should know if a triangle is NOT' do
		it 'isoceles with side values of 3, 3, 3' do 
			triangle = Triangle.new(3, 3, 3)
			expect(triangle.is_isosceles?).to be_false
		end
		
		it 'scalene with side values of 3, 5, 5' do
			triangle = Triangle.new(3, 5, 5)
			expect(triangle.is_scalene?).to be_false
		end

		it 'equilateral with side values of 1, 2, 1' do 
			triangle = Triangle.new(1, 2, 2)
			expect(triangle.is_equilateral?).to be_false
		end
	end


	context "should know its type" do
		it 'is isosceles' do
			triangle = Triangle.new(1, 2, 2)
			expect(triangle.type).to eq "isosceles"
		end

		it 'is equilateral' do 
			triangle = Triangle.new(1, 1,1)
			expect(triangle.type).to eq "equilateral"
		end

		it 'is scalene' do 
			triangle = Triangle.new(3,4,5)
			expect(triangle.type).to eq "scalene"
		end
	end

	it 'should return the triangle type and its sides' do
		triangle = Triangle.new(3,4,5)
		expect(triangle.show_triangle_attributes).to eq "Triangle with sides 3,4,5 is scalene"
		triangle = Triangle.new(3,3,3)
		expect(triangle.show_triangle_attributes).to eq "Triangle with sides 3,3,3 is equilateral"
		triangle = Triangle.new(1,2,2)
		expect(triangle.show_triangle_attributes).to eq "Triangle with sides 1,2,2 is isosceles"
	end

end