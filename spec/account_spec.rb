require 'account'

describe Account do

  let(:subject) { Account.new }
  let(:transaction_class) { double(:transaction_class, new: transaction) }
  let(:transaction) { double(:transaction, credit: 10, debit: 5) }

  describe '#initialize' do
    it 'initializes with an empty transaction array' do
      expect(subject.transactions).to eq []
    end
    it 'initializes with a default balance of zero' do
      expect(subject.balance).to eq Account::DEFAULT_BALANCE
    end
  end

  describe '#deposit' do
    it 'adds a credit transaction to the transaction array' do
      subject.deposit(10, transaction_class)
      expect(subject.transactions.first.credit).to eq 10
    end
  end

  describe '#withdraw' do
    it 'adds a debit transaction to the transaction array' do
      subject.withdraw(5, transaction_class)
      expect(subject.transactions.first.debit).to eq 5
    end
  end

end
