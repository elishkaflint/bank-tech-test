require 'statement'

describe Statement do

  # As a user,
  # So that I can move money into my account,
  # I want to be able to make a deposit.

  describe '#deposit' do
    it 'should add a new transation to the statement' do
      statement = Statement.new
      account = Account.new
      date = Time.now.strftime("%d/%m/%Y")
      account.deposit(10, date)
      msg = "date || credit || debit || balance\n#{date} || || 10.00 || 10.00"
      expect(statement.summary).to eq msg
    end
  end

end
