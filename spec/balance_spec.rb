require 'balance'

describe Balance do

  let(:subject) { Balance.new }

  describe '#initialize' do
    it 'starts with a default balance' do
      expect(subject.balance).to eq Balance::DEFAULT_BALANCE
    end
  end

  describe '#increase' do
    it 'increases the balance' do
      subject.increase(5)
      expect(subject.balance).to eq 5
    end
  end

  describe '#decrease' do
    it 'decreases the balance' do
      subject.decrease(5)
      expect(subject.balance).to eq -5
    end
  end

end
