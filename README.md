#Test Exercise: Command line banking app#

In order to better practice both my solo development skills and for any
tech tests I will have to undergo in applying to a position, I am attempting to
build a simple simulation of a bank that fulfils the following user stories:

```

As a user
So that I can store money
I would like to be able to deposit it into a bank account
(status: refactoring tests)

As a user
So that I can later take money out to spend
I would like to be able to be able to later withdraw from said bank account
(status: refactoring tests)

As a user
So that I can keep track of all such activities and be alerted to fraud
I would like to be able to see the date/amount of all activities
(status: passing tests)

As a user
As if it really needs saying at this point
I would like this to be saved in memory somehow
(status: building tests)
```

While there is still much to be done with regards to refactoring and formatting tests and
code,I feel that the project is starting to come together. I am taking a strictly test-driven
approach to development on this project, mocking dependencies to the best of my ability. This is
so that I can break up my development process into smaller, more manageable chunks and keep my
focus on the external behaviour exhibited by the design rather than worrying excessively about
the internal states.

In this same vein I have also tried to create as many classes with as few responsibilities as
possible, making it a lot easier to mock dependencies and put each component under the
microscope in testing.

**To run:**

- Fork and clone this repository

- Run 'bundle install' within the root of the repository in the terminal

- To play around with the program, do the following:
```
1. Type and enter 'irb' into your terminal

2. Enter 'require './lib/account'' into the terminal

3. Enter 'account = Account.new(sum)' with sum being an integer and account
being any name that you desire!

4. Use account.deposit(sum) to add a sum to this initial sum, or
account.withdraw(sum) to subtract a sum from it.

5. Use account.print_statement to return a record of every time you enacted the
methods from step 4, complete with dates and amounts involved. Type 'exit' to
close Irb when you are done
```

- Alternatively, to run tests enter 'rspec' into the terminal. To lint the code, enter 'rubocop'.
