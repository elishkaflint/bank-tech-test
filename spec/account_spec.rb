require 'account'

describe Account do

  let(:subject) { Account.new }
  let(:transaction_class) { double(:transaction_class, new: transaction) }
  let(:transaction) { double(:transaction, credit: 10) }

  describe '#initialize' do
    it 'initializes with an empty transaction array' do
      expect(subject.transactions).to eq []
    end
  end

  describe '#deposit' do
    it 'adds a credit transaction to the transaction array' do
      subject.deposit(10, transaction_class)
      expect(subject.transactions.first.credit).to eq 10
    end
  end

end
