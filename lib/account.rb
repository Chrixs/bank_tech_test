class Account

  attr_accessor :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def balance
    @balance
  end

  def deposit(amount)
    add_to_balance(amount)
  end

  def withdraw(amount)
    remove_from_balance(amount)
  end

  private

  def add_to_balance(amount)
    self.balance += amount
  end

  def remove_from_balance(amount)
    self.balance -= amount
  end

end
