require 'account'

describe "Banking application features" do

  before(:each) do
    @account = Account.new
    date = Time.now.strftime("%d/%m/%Y")
  end

  # As a user,
  # So that I can move money into my account,
  # I want to be able to make a deposit.

  describe '#deposit' do
    it 'adds a new credit transaction to the statement' do
      @account.deposit(10, date)
      msg = "date || credit || debit || balance\n#{date} || || 10.00 || 10.00"
      expect{ account.summary }.to output(msg).to_stdout
    end
  end

  # As a user,
  # So that I can spend the money in my account,
  # I want to be able to make a withdrawal.

  describe '#withdrawal' do
    it 'adds a new debit transation to the statement' do
      @account.withdraw(10, date)
      msg = "date || credit || debit || balance\n#{date} || || 10.00 || 10.00"
      expect{ account.summary }.to output(msg).to_stdout
    end
  end

  # As a user,
  # So that I can understand my transaction history,
  # I want to be able to see my transaction history in reverse chronological order.

  describe '#summary' do
    it 'shows multiple transactions in reverse order' do
      @account.deposit(10, date)
      @account.withdraw(5, date)
      msg = "date || credit || debit || balance\n#{date} || 5.00 || || 5.00\n#{date}  || || 10.00 || 10.00"
      expect{ account.summary }.to output(msg).to_stdout
    end
  end

end
