require 'account'

describe Account do

  let(:subject) { Account.new }

  describe '#initialize' do
    it 'initializes with an empty transaction array' do
      expect(subject.transactions).to eq []
    end
  end

  describe '#deposit' do
    it 'adds a credit transaction to the transaction array' do
      subject.deposit(10)
      expect(subject.transactions.first.credit).to eq 10
    end
  end

end
