# Balance tracks the current balance

class Balance

  DEFAULT_BALANCE = 0
  attr_reader :current

  def initialize
    @current = DEFAULT_BALANCE
  end

  def increase(amount)
    @current += amount
  end

  def decrease(amount)
    @current -= amount
  end

end
