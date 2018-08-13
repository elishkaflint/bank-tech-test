require_relative './account.rb'

account = Account.new
account.deposit(5)
account.withdraw(3)
t = account.transactions
s = Statement.new(t)
s.print
