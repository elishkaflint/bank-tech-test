require 'summary'

describe Summary do

  let(:subject) { Summary.new(transactions) }
  let(:transactions) { [transaction1, transaction2] }
  let(:transaction1) { double(:transaction1, debit: 0, credit: 10, date: "13/08/2018", current_balance: 10) }
  let(:transaction2) { double(:transaction2, debit: 5, credit: 0, date: "14/08/2018", current_balance: 5) }

  describe '#print' do
    it 'prints an array in the required format' do
      msg = "date || credit || debit || balance\n14/08/2018 || || 5.00 || 5.00\n13/08/2018 || 10.00 || || 10.00"
      expect(subject.print).to eq msg
    end
  end

end
