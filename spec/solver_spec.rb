require './solver'

describe Solver do
  context 'Solver methods should return correct result' do
    before(:each) do
      @solver = Solver.new
    end

    it 'should calculate factoriel of ceratin input as integer number ' do
      expect(@solver.factorial(2)).to eq 2
      expect(@solver.factorial(5)).to eq 120
      expect(@solver.factorial(10)).to eq 3_628_800
      expect(@solver.factorial(15)).to eq 1_307_674_368_000
    end

    it 'should calculate reverse method with argument string word, and returns word reverse ' do
      expect(@solver.reverse('hello')).to eq 'olleh'
      expect(@solver.reverse('Dejan')).to eq 'najeD'
      expect(@solver.reverse('Lacka')).to eq 'akcaL'
    end

    it 'run fizzbuzz method with argument integer number and check result ' do
      expect(@solver.fizzbuzz(93)).to eq 'fizz'
      expect(@solver.fizzbuzz(100)).to eq 'buzz'
      expect(@solver.fizzbuzz(30)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(90)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(14)).to eq 14
      expect(@solver.fizzbuzz(28)).to eq 28
    end
  end
end
