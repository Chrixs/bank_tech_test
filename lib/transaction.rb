require "./lib/account.rb"
require "date"

class Transaction

  attr_reader :date, :amount

  def initialize(amount)
    @amount = amount.to_s
    @date = Date.today.to_s
  end

end
