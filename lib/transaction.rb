require "./lib/account.rb"
require "date"

class Transaction

  attr_reader :date, :amount, :balance

  def initialize(amount, balance)
    @amount = amount
    @balance = balance
    @date = Date.today.to_s
  end

end
