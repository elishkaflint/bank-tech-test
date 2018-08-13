# Transaction stores details relating to a deposit or withdrawal

class Transaction

  attr_reader :debit, :credit, :date, :current_balance

  def initialize(debit, credit, balance, date = Time.new.strftime("%d/%m/%Y"))
    @debit = format(debit)
    @credit = format(credit)
    @date = date
    @current_balance = format(balance)
  end

  private

  def format(number)
    number === 0 ? "" : '%.2f' % number
  end

end
