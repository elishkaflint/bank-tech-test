# Account logs individual transactions

require_relative './transaction'
require_relative './statement'
require_relative './balance'

class Account

  attr_reader :transactions, :balance

  def initialize(statement = Statement.new)
    @transactions = []
    @balance = 0
    @statement = statement
  end

  def deposit(amount, transaction = Transaction)
    raise "You cannot deposit a negative amount" unless amount.positive?
    @balance += amount
    credit = transaction.new(0, amount, @balance)
    store(credit)
  end

  def withdraw(amount, transaction = Transaction)
    raise "You cannot withdraw a negative amount" unless amount.positive?
    @balance -= amount
    debit = transaction.new(amount, 0, @balance)
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
