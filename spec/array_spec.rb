# We are the best!
describe Array do

	it 'should know its size' do
		array = [1,2,3,4]
		array.size.should eq (4)
	end

	it 'should be created with default value' do
		array = Array.new (3) { "Fizz" }
		array.should eq(['Fizz', 'Fizz', 'Fizz'])
	end


	it 'should map its values' do
		array = [ 1,4,9]
		array.map{|v| v * 3}.should eq([3, 12, 27])
		array.map{ 'Fizz' }.should eq(['Fizz', 'Fizz', 'Fizz'])
	end	

	it 'should rotate to end of array' do
		array = %w(john paul ringo george)
		array.rotate(2).should eq(%w(ringo george john paul))
	end

	pending it 'should shuffle the content of the array' do
		array = %w(fuck a duck)
		array.shuffle.should eq(%w(duck fuck a))
	end

	it 'should list all n combinations of array' do
		array = [1, 2, 3, 4, 5, 6, 7]
		array.combination(7).to_a.should eq([[1, 2, 3, 4, 5, 6, 7]])
	end

	it 'should split a string\'s characters into an array' do
		string = "stars"
		string.chars.should eq(["s","t","a","r","s"])
	end

	it 'should join split array' do
		array = ["s", "t", "a", "r", "s"]
		array.join.should eq("stars")
	end


end