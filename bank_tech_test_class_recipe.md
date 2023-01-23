# Class Design Recipe

## 1. Describe the Problem

As a user
So that I can save money
I want to be able to deposit it into my bank account.

As a user
So that I can spend my money when I want to
I want to be able to withdraw some cash from my bank account.

As a user
So that I can keep track of my finances overall
I want to be able to view my bank account statement when I need to.

As a user
If I don't have enough cash to withdraw
I don't want the account to go into an overdraft.

## 2. Design the Class Interface

```ruby

class BankAccount
  def initializer
    account = 0
  end

  def deposit(cash)
    account << cash
      return account
  end

  def withdraw(cash)
    account >> cash
      return account
  end

  def view_statement
    return account
end

```
## 3. Create Examples as Tests

```ruby
# EXAMPLE

account = BankAccount.new

# 1
deposit(0)

expect(account).to eq(0)

# 2
deposit(1000)

expect(account).to eq(1000)

# 3
deposit(1000)
deposit(2000)

expect(account).to eq(3000)

# 4
deposit(1000)
deposit(2000)
withdraw(500)

expect(account).to eq(2500)

# 5

deposit(1000)
withdraw(1500)

=> throw error


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._