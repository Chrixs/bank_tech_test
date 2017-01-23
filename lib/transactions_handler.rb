require "./lib/account.rb"
require "date"

class TransactionsHandler

  attr_reader :date, :amount

  def initialize(amount)
    @amount = amount
    @date = Date.today.to_s
  end

end
