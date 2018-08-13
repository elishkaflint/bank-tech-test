# Statement prints a list of transactions

class Statement

  def summary(transactions)
    @transactions = transactions
    print_header + print_transactions
  end

  private

  def print_header
    "date || credit || debit || balance\n"
  end

  def print_transactions
    output = @transactions.reverse.map do |transaction|
      "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.current_balance}\n"
    end
    output.join("")
  end

end
