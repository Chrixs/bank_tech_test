require "account"


describe Account do

  subject(:account) { described_class.new(0, Statement) }

  it "tests the entire bank feature set" do
    date = Date.today.to_s
    account.deposit(1000)
    account.withdraw(500)
    expect(account.print_statement).to eq("date       || credit || debit   || balance\n" +
    "#{date} ||        || -500.00 || 500.00 \n" +
    "#{date} || 1000.00||         || 1000.00\n")
  end

end
