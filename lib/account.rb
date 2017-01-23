require "./lib/transaction.rb"
require "./lib/statement.rb"

class Account

  attr_accessor :balance, :statement

  def initialize(balance = 0)
    @balance = balance
    @statement = Statement.new
  end

  def balance
    @balance
  end

  def deposit(amount)
    add_to_balance(amount)
    transaction = Transaction.new(amount)
    push_to_array(transaction)
  end

  def withdraw(amount)
    remove_from_balance(amount)
    transaction = Transaction.new(-amount)
    push_to_array(transaction)
  end

  private

  def add_to_balance(amount)
    self.balance += amount
  end

  def remove_from_balance(amount)
    self.balance -= amount
  end

  def push_to_array(transaction)
    self.statement.transactions << transaction
  end

end
