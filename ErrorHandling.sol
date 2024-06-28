

/* ErrorHandling Smart Contract Explanation
1. Overview
   The ErrorHandling contract showcases error handling mechanisms in Solidity, including require(), assert(), and revert() statements, 
   ensuring secure and predictable contract behavior.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {

    uint256 public balance;

    function setBalance(uint256 _balance) public {
        require(_balance > 0, "Balance must be greater than zero");
        balance = _balance;
    }

    function doubleBalance() public view returns (uint256) {
        assert(balance > 0);
        return balance * 2;
    }

    function resetBalance() public pure {
        revert("Resetting balance is not allowed");
    }

    function decreaseBalance(uint256 amount) public {
        if (amount > balance) {
            revert("Decrease amount exceeds balance");
        }
        balance -= amount;
    }
}

/*
2. Functions
   a) setBalance
   - Functionality: Sets the contract's balance to the provided _balance.
   - Error Handling: Uses require() to ensure _balance is greater than zero. If not, it reverts with an error message.

   b) doubleBalance
   - Functionality: Returns double the current balance.
   - Error Handling: Uses assert() to ensure balance is greater than zero before performing the calculation.

   c) resetBalance
   - Functionality: Reverts execution with a custom error message stating that resetting the balance is not allowed.
   - Error Handling: Demonstrates using revert() to halt execution and provide a specific error message.

   d) decreaseBalance
   - Functionality: Decreases the balance by the specified amount.
   - Error Handling: Checks if amount is greater than balance. If true, it reverts with an error message. Otherwise, it subtracts amount from balance.

3. Deployment and Interaction
   - Deployment: Deploy the ErrorHandling contract on an Ethereum network using tools like Remix or Hardhat.
   - Interaction: Call the functions (setBalance, doubleBalance, resetBalance, decreaseBalance) with appropriate arguments to observe error handling in action.
   - Error Scenarios: Test scenarios where inputs violate the requirements specified in the functions to see how each statement (require(), assert(), revert()) reacts. */

