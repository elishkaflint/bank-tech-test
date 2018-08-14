require 'account'

describe Account do

  let(:account) { Account.new(statement, transaction_class) }
  let(:transaction_class) { double(:transaction_class, new: transaction) }
  let(:transaction) { double(:transaction) }
  let(:statement) { double(:statement) }

  describe '#initialize' do
    it 'initializes with an empty transaction array' do
      expect(account.transactions).to eq []
    end
  end

  describe '#deposit' do
    it 'increases the balance' do
      account.deposit(10)
      expect(account.balance).to eq 10
    end
    it 'adds a credit transaction to the transaction array' do
      account.deposit(10)
      expect(account.transactions).to include transaction
    end
    it 'raises an error if the amount is a negative number' do
      message = "You cannot deposit a negative amount"
      expect { account.deposit(-10) }.to raise_error(message)
    end
  end

  describe '#withdraw' do
    it 'decreases the balance' do
      account.withdraw(10)
      expect(account.balance).to eq(-10)
    end
    it 'adds a debit transaction to the transaction array' do
      account.withdraw(5)
      expect(account.transactions).to include transaction
    end
    it 'raises an error if the amount is a negative number' do
      message = "You cannot withdraw a negative amount"
      expect { account.withdraw(-5) }.to raise_error(message)
    end
  end

  describe '#summary' do
    it 'prints a summary of the transactions' do
      expect(statement).to receive(:print)
      account.summary
    end
  end

end
