require "account"

describe Account do
  subject(:account) {described_class.new}

  it "tests that an account can be created" do
    new_account = Account.new
    expect(new_account).to be_an_instance_of(Account)
  end


end
