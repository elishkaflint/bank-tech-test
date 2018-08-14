require 'balance'

describe Balance do

  let(:balance) { Balance.new }

  describe '#initialize' do
    it 'starts with a default balance' do
      expect(balance.current).to eq Balance::DEFAULT_BALANCE
    end
  end

  describe '#increase' do
    it 'increases the balance' do
      balance.increase(5)
      expect(balance.current).to eq 5
    end
  end

  describe '#decrease' do
    it 'decreases the balance' do
      balance.decrease(5)
      expect(balance.current).to eq(-5)
    end
  end

end
