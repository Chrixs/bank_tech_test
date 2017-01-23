require "./lib/account"

class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

end
