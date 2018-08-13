# Account logs individual transactions

require 'transaction'

class Account

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def deposit(amount, transaction = Transaction)
    @transaction = transaction.new(0, amount)
    @transactions << @transaction
  end

end
