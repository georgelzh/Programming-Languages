/* this program has a banck account class that stores balance.
File name: bank_account.swift */

struct BankAccount {
    var name: String
    var balance: Double
    
    init(name: String, balance: Double) {
        self.name = name
        self.balance = balance
    }

    mutating func debit(amount: Double) -> String? {
        if amount > self.balance {
            return "warning: Transaction failed! Insufficient fund! "
        } else {
            self.balance = self.balance - amount
            return nil
        }
    }

    mutating func credit(amount: Double) {
        self.balance = self.balance + amount
    }

    func getBalance() -> Double {
        return self.balance
    }
}

//make a new account with name Boby and balance 1000000
var testAccount = BankAccount(name: "Boby", balance: 10000000)
print(testAccount.getBalance())

//make a new copy of Boby and change its account name to Toby.
var accountB = testAccount
accountB.name = "Toby"
print(accountB.name)
