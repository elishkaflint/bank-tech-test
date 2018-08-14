# Account logs individual transactions

require_relative './transaction'
require_relative './statement'

class Account

  attr_reader :transactions, :balance
  DEFAULT_BALANCE = 0

  def initialize(statement = Statement.new)
    @transactions = []
    @balance = DEFAULT_BALANCE
    @statement = statement
  end

  def deposit(amount, transaction = Transaction)
    @balance += amount
    # reducing number of args does not make tests fail
    credit = transaction.new(0, amount, @balance)
    store(credit)
  end

  def withdraw(amount, transaction = Transaction)
    @balance -= amount
    # reducing number of args does not make tests fail
    debit = transaction.new(amount, 0, @balance)
    store(debit)
  end

  def summary
    @statement.summary(@transactions)
  end

  private

  def store(transaction)
    @transactions << transaction
  end

end
