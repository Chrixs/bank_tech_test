require "statement.rb"
require"./lib/account"

describe Statement do

  subject(:statement) { described_class.new }
  let(:account) { double :account}

  it "tests that a statement can be instantiated" do
    new_statement = Statement.new
    expect(new_statement).to be_an_instance_of Statement
  end

end
