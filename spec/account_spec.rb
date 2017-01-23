require "account"

describe Account do
  subject(:account) { described_class.new }

  it "tests that an account can be created" do
    new_account = Account.new
    expect(new_account).to be_an_instance_of(Account)
  end

  it "expects an account to have a default balance of 0 when created" do
    expect(account.balance).to eq 0
  end

  it "tests that money can be deposited into an account" do
    account.deposit(4000)
    expect(account.balance).to eq 4000
  end


end
