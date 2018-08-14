# Statement prints a list of transactions

class Statement

  def print(transactions)
    @transactions = transactions
    puts(print_header + print_transactions)
  end

  private

  def print_header
    "date || credit || debit || balance\n"
  end

  def print_transactions
    output = @transactions.reverse.map do |transaction|
      "#{transaction.date} || #{format(transaction.credit)} || "\
      "#{format(transaction.debit)} || #{format(transaction.current_balance)}\n"
    end
    output.join("")
  end

  def format(number)
    number === 0 ? "" : '%.2f' % number
  end

end
