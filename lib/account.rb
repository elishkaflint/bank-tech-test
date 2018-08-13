# Account logs individual transactions

require 'transaction'

class Account

  attr_reader :transactions, :balance
  DEFAULT_BALANCE = 0

  def initialize
    @transactions = []
    @balance = DEFAULT_BALANCE
  end

  def deposit(amount, transaction = Transaction)
    credit = transaction.new(0, amount)
    store(credit)
  end

  def withdraw(amount, transaction = Transaction)
    debit = transaction.new(amount, 0)
    store(debit)
  end

  private

  def store(transaction)
    @transactions << transaction
  end

end
