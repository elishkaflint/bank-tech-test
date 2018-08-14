require 'Statement'

describe Statement do

  let(:subject) { Statement.new }
  let(:transactions) { [transaction1, transaction2] }
  let(:transaction1) { double(:transaction1, debit: "0.00", credit: "10.00", date: "13/08/2018", current_balance: "10.00") }
  let(:transaction2) { double(:transaction2, debit: "5.00", credit: "0.00", date: "14/08/2018", current_balance: "5.00") }

  describe '#print' do
    it 'prints an array in the required format' do
      msg = "date || credit || debit || balance\n"\
            "14/08/2018 || 0.00 || 5.00 || 5.00\n"\
            "13/08/2018 || 10.00 || 0.00 || 10.00\n"
      expect { subject.print(transactions) }.to output(msg).to_stdout
    end
  end

end
