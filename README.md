# ErrorHandling Smart Contract

This project implements a Solidity smart contract to demonstrate error handling techniques using `require()`, `assert()`, and `revert()` statements. The contract includes functions that illustrate different error scenarios and how these statements can be utilized for secure and reliable smart contract development.

## Description

The ErrorHandling contract showcases various error handling mechanisms essential for developing robust smart contracts on the Ethereum blockchain. It provides methods to set and manipulate a balance while ensuring proper error checks to maintain contract integrity.

## Getting Started

To run this project, you can use Remix, an online Solidity IDE. Follow the steps below to get started:

### Executing Program

1. Open Remix in your web browser.
2. Create a new file by clicking on the "+" icon in the left-hand sidebar.
3. Save the file with a .sol extension (e.g., ErrorHandling.sol).
4. Copy and paste the Solidity code provided below into the file.
5. Compile the contract by clicking on the "Solidity Compiler" tab in the sidebar, then clicking on "Compile" at the top of the page.
6. Deploy the contract by clicking on the "Deploy & Run Transactions" tab in the sidebar, then selecting the contract and clicking on "Deploy".
7. Interact with the contract by calling the `setBalance`, `doubleBalance`, `resetBalance`, and `decreaseBalance` functions with appropriate parameters.

```solidity
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
## LICENSE
This project is licensed under the MIT License - see the LICENSE.md file for details
