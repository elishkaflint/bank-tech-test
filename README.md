# Bank Tech Test

___

## Summary

Week 9 Makers Academy tech test to build a banking application.</br>
[Full instructions here.](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)
___

## Credits

Developed solo by Elishka Flint.

___

## Technical

### Tech/Frameworks Used

Ruby, RSpec, Rubocop, Simple Coverage

**Programme fully tested; all classes isolated with 100% test coverage and no linter offenses**

### Using the Application

#### Clone the repo and launch:

```
$ git clone https://github.com/elishkaflint/bank-tech-test.git
$ cd bank-tech-test
$ bundle
$ irb
> require './lib/account.rb'
```

#### Example usage:

```
# create a new account
> account = Account.new

# deposit money in the account
> account.deposit(10)

# withdraw money from the account
> account.withdraw(5)

# print a summary
> account.summary

date || credit || debit || balance
14/08/2018 ||  || 5.00 || 5.00
14/08/2018 || 10.00 ||  || 10.00
```

____

## Process

#### Approach:

* Broke the task down into clear user stories
* Used TDD (red, green, refactor) to work through each story (as evidenced by my [commits](https://github.com/elishkaflint/bank-tech-test/commits/master))
* Started with feature tests and broke these down into more focused unit tests
* Planned classes carefully to ensure I adhered to the Single Responsibility Principle
* Ensured tests were isolated from other classes to remove any external dependencies from individual spec files

#### Improvement areas:

* Withdraw and deposit methods are long when guard clauses are included
* Withdraw and deposit unit tests may not be fully isolated from each other

___

## User Stories

```

As a user,
So that I can move money into my account,
I want to be able to make a deposit.

As a user,
So that I can spend the money in my account,
I want to be able to make a withdrawal.

As a user,
So that I know how much money I have,
I want to be able to see my current balance.

As a user,
So that I can understand my transaction history,
I want to be able to see when I made each transaction.

As a user,
So that I can understand my transaction history,
I want to be able to see my transaction history in reverse chronological order.
```
