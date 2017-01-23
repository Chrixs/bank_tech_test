require "transaction"

describe Transaction do

  subject(:transaction) { described_class.new(10, 10) }

  it "tests that a transaction can be instantiated" do
    new_transaction = Transaction.new(10, 10)
    expect(new_transaction).to be_an_instance_of(Transaction)
  end

  it "transactions are created with current date" do
    expect(transaction.date).to eq Date.today.to_s
  end


end
