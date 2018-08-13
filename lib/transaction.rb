# Transaction stores details relating to a deposit or withdrawal

class Transaction

  attr_reader :debit, :credit, :date
  attr_accessor :current_balance

  def initialize(debit, credit, date = Time.new.strftime("%d/%m/%Y"), balance)
    @debit = debit
    @credit = credit
    @date = date
    @current_balance = balance
  end

end
