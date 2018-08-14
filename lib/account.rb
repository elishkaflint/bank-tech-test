# Account logs individual transactions

require_relative './transaction'
require_relative './statement'
require_relative './balance'

class Account

  attr_reader :transactions

  def initialize(statement = Statement.new, balance = Balance.new)
    @transactions = []
    @balance = balance
    @statement = statement
  end

  def deposit(amount, transaction = Transaction)
    @balance.increase(amount)
    credit = transaction.new(0, amount, @balance.current)
    store(credit)
  end

  def withdraw(amount, transaction = Transaction)
    @balance.decrease(amount)
    debit = transaction.new(amount, 0, @balance.current)
    store(debit)
  end

  def summary
    @statement.print(@transactions)
  end

  private

  def store(transaction)
    @transactions << transaction
  end

end
