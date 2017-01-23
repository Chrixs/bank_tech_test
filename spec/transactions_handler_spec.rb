require "transactions_handler"

describe TransactionsHandler do

  subject(:transaction) { described_class.new(10) }
  let(:account) { double :account}
  let(:statement) { double :statement}

  it "tests that a transaction can be instantiated" do
    new_transaction = TransactionsHandler.new(10)
    expect(new_transaction).to be_an_instance_of(TransactionsHandler)
  end

  it "transactions are created with current date" do
    expect(transaction.date).to eq Date.today.to_s
  end


end
