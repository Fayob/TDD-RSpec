require './solver'

describe Solver do
  describe 'Test for factorial method' do
    solver = Solver.new('qwert')
    it 'Should test for correct in factorial method in solver class' do
      # mock = double("Solver")
      # expect(mock).to receive(:factorial).with(4)

      expect(solver.factorial(0)).to eql(1)
      expect(solver.factorial(2)).to eql(2)
      expect(solver.factorial(4)).to eql(24)
      expect(solver.factorial(5)).to eql(120)
    end

    it 'should test for error input in factorial method in solver class' do
      expect(solver.factorial(-1)).to eql('-1 is not a positive value')
      expect(solver.factorial(-8)).to eql('-8 is not a positive value')
    end
  end

  describe 'Test for reverse method' do
    it 'Should reverse input passed into reverse method' do
      mock = instance_double('Testing')
      expect(mock).to receive(:reverse).and_return('olleh')

      solver = Solver.new(mock)
      solver.reverse('hello')
    end
  end

  describe 'Test for fizzbuzz method' do
    solver = Solver.new('Name')
    it 'Should return fizz for multiple of 3' do
      expect(solver.fizzbuzz(3)).to eql('fizz')
    end
    it 'Should return buzz for multiple of 5' do
      expect(solver.fizzbuzz(5)).to eql('buzz')
    end
    it 'Should return fizzbuzz for multiple of 3 and 5' do
      expect(solver.fizzbuzz(15)).to eql('fizzbuzz')
    end
    it 'Should return string of number if argument provided is not divisible by 3 or 5' do
      expect(solver.fizzbuzz(7)).to eql('7')
    end
    it 'Should return error message when a string argument is provided' do
      expect(solver.fizzbuzz('the')).to eql('Please provide a valid number')
    end
  end
end
