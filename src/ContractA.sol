// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Counter} from "./Counter.sol";

contract ContractA {
    Counter counter;

    constructor(address _counter) {
        counter = Counter(_counter);
    }

    function setNumber(uint256 newNumber) public {
        counter.setNumber(newNumber);
    }

    function increment() public {
        counter.increment();
    }
}
