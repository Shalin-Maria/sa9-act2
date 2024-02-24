require 'bank'
RSpec.describe BankAccount do
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        account = BankAccount.new(10)
        account.deposit(50)
        expect(account.balance).to eq(60)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        account = BankAccount.new(60)
        account.withdraw(10)
        expect(account.balance).to eq(50)
      end
  
      it "does not change the balance if insufficient funds" do
        account = BankAccount.new(60)
        account.withdraw(70)
        expect(account.balance).to eq(60)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        account = BankAccount.new(50)
        expect(account.balance).to eq(50)
      end
    end
  end
  