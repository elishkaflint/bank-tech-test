# Transaction stores details relating to a deposit or withdrawal

class Transaction

  attr_reader :debit, :credit, :date, :current_balance

  def initialize(debit, credit, balance, date = Time.new.strftime("%d/%m/%Y"))
    @debit = debit
    @credit = credit
    @date = date
    @current_balance = balance
  end

end
