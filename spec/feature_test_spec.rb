require "account"


describe Account do

  subject(:account) { described_class.new }

  it "tests the entire bank feature set" do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.print_statement).to eq("date       || credit || debit   || balance\n" +
    "2017-01-23 ||        || -500.00 || 500.00\n" +
    "2017-01-23 || 1000.00 ||       || 1000.00\n")
  end

end
