// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;
    uint256 public dummy;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
        if (newNumber % 3 == 0) {
            for (uint256 i = 0; i < 100; i++) {
                dummy++;
            }
        }
    }

    function increment() public {
        number++;
    }
}
