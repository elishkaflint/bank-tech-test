require 'account'

describe Account do

  let(:subject) { Account.new(statement) }
  let(:transaction_class) { double(:transaction_class, new: transaction) }
  let(:transaction) { double(:transaction) }
  let(:statement) { double(:statement) }
  let(:balance) { double(:balance) }

  describe '#initialize' do
    it 'initializes with an empty transaction array' do
      expect(subject.transactions).to eq []
    end
  end

  describe '#deposit' do
    it 'adds a credit transaction to the transaction array' do
      subject.deposit(10, transaction_class)
      expect(subject.transactions).to include transaction
    end
    it 'increases the balance' do
      expect(balance).to receive(:increase)
      subject.deposit(10, transaction_class)
    end
  end

  describe '#withdraw' do
    it 'adds a debit transaction to the transaction array' do
      subject.withdraw(5, transaction_class)
      expect(subject.transactions).to include transaction
    end
    it 'decreases the balance' do
      expect(balance).to receive(:decrease)
      subject.withdraw(5, transaction_class)
    end
  end

  describe '#summary' do
    it 'prints a summary of the transactions' do
      expect(statement).to receive(:print)
      subject.summary
    end
  end

end
