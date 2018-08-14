class Balance

  DEFAULT_BALANCE = 0
  attr_reader :balance

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def increase(amount)
    @balance += amount
  end

  def decrease(amount)
    @balance -= amount
  end

end
