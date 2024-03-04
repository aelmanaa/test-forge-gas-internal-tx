// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ContractA} from "../src/ContractA.sol";
import {Counter} from "../src/Counter.sol";

contract ContractATest is Test {
    ContractA public contractA;
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        contractA = new ContractA(address(counter));
    }

    function test_Increment() public {
        contractA.increment();
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        contractA.setNumber(x);
        assertEq(counter.number(), x);
    }
}
