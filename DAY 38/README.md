Solidity libraries are like hidden gems within the world of smart contracts. They are powerful tools that allow you to extract reusable code and logic from your contracts.

Before we delve deeper into libraries, let’s understand how they are linked to contracts. If all the functions in a library are marked as `internal`, the library is embedded directly into the contract. However, if any function is marked as `public` or `external`, the library must be deployed separately and then linked to the contract before deployment. This flexibility gives libraries the power to extend the capabilities of your contracts!

We have implemented a simple library where we calculate square of a given number.
