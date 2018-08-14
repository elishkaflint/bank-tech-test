require 'transaction'

describe Transaction do

  let(:date) { "01/01/2018" }
  let(:transaction) { Transaction.new(5, 0, 20, date) }

  describe '#date' do
    it 'returns the date of a transaction when it is not today' do
      expect(transaction.date).to eq date
    end
  end

end
