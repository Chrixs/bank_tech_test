require "./lib/transaction.rb"
require "./lib/statement.rb"

class Account

  attr_accessor :balance, :statement

  STATEMENT_HEADERS = "date       || credit || debit   || balance\n"

  def initialize(balance = 0, statement=Statement)
    @balance = balance
    @statement = statement.new
  end

  def balance
    @balance
  end

  def deposit(amount)
    add_to_balance(amount)
    transaction = Transaction.new(amount, balance)
    push_to_array(transaction)
  end

  def withdraw(amount)
    remove_from_balance(amount)
    transaction = Transaction.new(-amount, balance)
    push_to_array(transaction)
  end

  def print_statement
    transaction_loop
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

  def transaction_loop
    statement = STATEMENT_HEADERS
    self.statement.transactions.reverse.each do |transaction|
      if transaction.amount > 0
        statement += credit(transaction.date, transaction.amount, transaction.balance)
      else
        statement += debit(transaction.date, transaction.amount, transaction.balance)
      end
    end
    return statement
  end

  def credit(date, amount, balance)
    "#{date.ljust(11)}|| #{('%.2f' % amount).to_s.ljust(7)}|| #{''.ljust(8)}|| #{('%.2f' % balance).to_s.ljust(7)}\n"
  end

  def debit(date, amount, balance)
    "#{date.ljust(11)}|| #{''.ljust(7)}|| #{('%.2f' % amount).to_s.ljust(8)}|| #{('%.2f' % balance).to_s.ljust(7)}\n"
  end

end
