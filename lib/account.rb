class Account

  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def deposit(amount)
    add_to_balance(amount)
  end

  private

  def add_to_balance(amount)
    self.balance += amount
  end

end
