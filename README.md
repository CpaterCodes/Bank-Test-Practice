#Test Exercise: Command line banking app#

In order to better practice both my solo development skills and for any
tech tests I will have to undergo in applying to a position, I am attempting to
build a simple simulation of a bank that fulfils the following user stories:

```

As a user
So that I can store money
I would like to be able to deposit it into a bank account
(status: passing tests)

As a user
So that I can later take money out to spend
I would like to be able to be able to later withdraw from said bank account
(status: passing tests)

As a user
So that I can keep track of all such activities and be alerted to fraud
I would like to be able to see the date/amount of all activities
(status: More tests built, failing)

As a user
As if it really needs saying at this point
I would like this to be saved in memory somehow
(status: building tests)
```

While there is still much to be done with regards to refactoring and formatting tests and code, I feel that
the project is starting to come together.

**To run:**

- Fork and clone this repository

- Run 'bundle install' within the root of the repository in the terminal

- To play around with the program, enter 'irb' into the terminal to active the irb
and type and enter 'require ./lib/account'. From here you can test and use methods

- Alternatively, to run tests enter 'rspec' into the terminal. To lint the code, enter 'rubocop'.
