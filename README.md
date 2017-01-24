# Bank Tech Test #

#### A short tech test. The following requirements were given:

1. You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)

2. Deposits, withdrawal.

3. Account statement (date, amount, balance) printing.

4. Data can be kept in memory (it doesn't need to be stored to a database or anything).

#### And our acceptance criteria was:

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see:
```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```


## My approach

I started by diagramming the bank out in full. I came to conclusion that I would need three classes. Following good TDD practice I wrote tests for all of my methods, with nearly complete test coverage. I used the `Statement` class for storing my transaction history, with `Transactions` used for creating each record of a transaction that takes place when `deposit` or `withdraw` are called, in `Account`.


## To try it out

* Clone this repository from GitHub.

* Navigate in the terminal to the `bank_tech_test` directory.

* Run `bundle` in the terminal to install all the required gems from the `Gemfile`

* Open up your REPL of choice (`pry`, `irb` etc.) and run `require "./lib/account"`

* To make a new account object, input `account = Account.new`

* From there you can use any of the methods, `withdraw`, `deposit` or `print_statement` to use the program.
