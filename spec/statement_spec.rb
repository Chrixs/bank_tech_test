require "statement.rb"

describe Statement do

  subject(:statement) { described_class.new }

  it "tests that a statement can be instantiated" do
    new_statement = Statement.new
    expect(new_statement).to be_an_instance_of Statement
  end

  it "expects a statement to intialize with an empty array" do
    expect(statement.transactions).to be_instance_of Array
  end

end
