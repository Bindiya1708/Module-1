// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {

    uint256 public balance;

    function setBalance(uint256 _balance) public {
        // Ensure the balance is not zero
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

