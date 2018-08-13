require 'transaction'

describe Transaction do

  let(:date) { Time.now.strftime("%d/%m/%Y") }
  let(:debit_transaction) { Transaction.new(5, 0, 20, date) }
  let(:credit_transaction) { Transaction.new(0, 10, 20, date) }

  describe '#debit' do
    it 'returns the debit amount' do
      expect(debit_transaction.debit).to eq 5.00
    end
  end

  describe '#credit' do
    it 'returns the credit amount' do
      expect(credit_transaction.credit).to eq 10.00
    end
  end

  describe '#date' do
    it 'returns the transaction date' do
      expect(debit_transaction.date).to eq date
    end
  end

  describe '#current_balance' do
    it 'returns the balance after the transaction has completed' do
      expect(debit_transaction.current_balance).to eq 20
    end
  end

end
