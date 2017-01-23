require "transactions_handler"

describe TransactionsHandler do

  subject(:transaction) { described_class.new }
  let(:account) { double :account}

  it "tests that a transaction can be instantiated" do
    new_transaction = TransactionsHandler.new
    expect(new_transaction).to be_an_instance_of(TransactionsHandler)
  end


end
